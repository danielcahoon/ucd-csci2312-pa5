#include <string>
namespace CS2312
{
	template <typename T>
	class less
	{
	public:
		less()
		{
		}
		~less()
		{
		}

		bool operator() (const T &lhs, const T &rhs)
		{
			if (lhs < rhs)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

	};


	template<>
	class less<std::string>
	{
	public:
		less()
		{
		}
		~less()
		{
		}
		bool operator() (const std::string &lhs, const std::string &rhs)
		{
			if (lhs.compare(rhs) >= 0)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
	};

	template<>
	class less<const char *>
	{
	public:
		less()
		{
		}
		~less()
		{
		}
		bool operator() (const char *lhs, const char *rhs)
		{
			if (strcmp(lhs, rhs) >= 0)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
	};
}