
# line 1 "ragel/lexer.rl"
=begin

# line 19 "ragel/lexer.rl"

=end

module SpecSpeak

  class Lexer

    def initialize
      
# line 16 "lib/specspeak/lexer.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 2, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 2, 0, 1, 
	2, 3, 4
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 3, 18, 22, 27, 32, 37, 
	42, 47, 52, 57, 60, 65, 70, 75, 
	80, 85, 90, 95, 100, 105, 110, 115, 
	120, 125, 130, 135, 140, 145
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	124, 32, 126, 32, 60, 62, 69, 77, 
	78, 82, 95, 124, 9, 13, 65, 90, 
	97, 122, 32, 57, 59, 126, 120, 32, 
	57, 59, 126, 97, 32, 57, 59, 126, 
	109, 32, 57, 59, 126, 112, 32, 57, 
	59, 126, 108, 32, 57, 59, 126, 101, 
	32, 57, 59, 126, 115, 32, 57, 59, 
	126, 58, 32, 126, 111, 32, 57, 59, 
	126, 100, 32, 57, 59, 126, 117, 32, 
	57, 59, 126, 108, 32, 57, 59, 126, 
	101, 32, 57, 59, 126, 111, 32, 57, 
	59, 126, 116, 32, 57, 59, 126, 101, 
	32, 57, 59, 126, 113, 32, 57, 59, 
	126, 117, 32, 57, 59, 126, 105, 32, 
	57, 59, 126, 114, 32, 57, 59, 126, 
	101, 32, 57, 59, 126, 109, 32, 57, 
	59, 126, 101, 32, 57, 59, 126, 110, 
	32, 57, 59, 126, 116, 32, 57, 59, 
	126, 124, 32, 126, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 1, 9, 0, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 1, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 1
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 3, 16, 19, 23, 27, 31, 
	35, 39, 43, 47, 50, 54, 58, 62, 
	66, 70, 74, 78, 82, 86, 90, 94, 
	98, 102, 106, 110, 114, 118
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	2, 1, 0, 3, 5, 5, 6, 7, 
	8, 9, 5, 1, 3, 5, 5, 4, 
	5, 5, 10, 11, 5, 5, 10, 12, 
	5, 5, 10, 13, 5, 5, 10, 14, 
	5, 5, 10, 15, 5, 5, 10, 16, 
	5, 5, 10, 17, 5, 5, 10, 18, 
	5, 10, 19, 5, 5, 10, 20, 5, 
	5, 10, 21, 5, 5, 10, 22, 5, 
	5, 10, 17, 5, 5, 10, 23, 5, 
	5, 10, 15, 5, 5, 10, 24, 5, 
	5, 10, 25, 5, 5, 10, 26, 5, 
	5, 10, 27, 5, 5, 10, 28, 5, 
	5, 10, 29, 5, 5, 10, 30, 5, 
	5, 10, 31, 5, 5, 10, 32, 5, 
	5, 10, 17, 5, 5, 10, 2, 1, 
	33, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	2, 1, 29, 2, 0, 3, 4, 12, 
	17, 19, 2, 5, 6, 7, 8, 9, 
	10, 11, 2, 13, 14, 15, 16, 18, 
	20, 21, 22, 23, 24, 25, 26, 27, 
	28, 2
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	11, 0, 16, 5, 0, 0, 0, 0, 
	0, 0, 7, 0, 0, 0, 0, 0, 
	0, 0, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 9
]

class << self
	attr_accessor :_lexer_to_state_actions
	private :_lexer_to_state_actions, :_lexer_to_state_actions=
end
self._lexer_to_state_actions = [
	0, 0, 13, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_from_state_actions
	private :_lexer_from_state_actions, :_lexer_from_state_actions=
end
self._lexer_from_state_actions = [
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_trans
	private :_lexer_eof_trans, :_lexer_eof_trans=
end
self._lexer_eof_trans = [
	0, 1, 0, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 11, 11, 11, 
	11, 11, 11, 11, 11, 34
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 2;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 2;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 2;


# line 28 "ragel/lexer.rl"
      # %% this just fixes syntax highlighting in TextMate et al.
    end

    def emit_keyword(token_array, data, ts, te)
      keyword = data[ts...te].pack("c*").gsub(/:$/, '')
      token_array << [keyword.upcase.to_sym, keyword]
    end

    def emit_row(data, target_array, ts, te)
      target_array << [:ROW, 'Row']
      cells = data[(ts + 1)...( te - 1)].pack("c*")
      cells.split('|').each do |cell|
        target_array << [:CELL, cell.strip]
      end
    end

    def tokenize(data)
      data = data.unpack("c*") if(data.is_a?(String))
      eof = data.length
      token_array = []

      
# line 219 "lib/specspeak/lexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
	ts = nil
	te = nil
	act = 0
end

# line 50 "ragel/lexer.rl"
      
# line 231 "lib/specspeak/lexer.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_acts = _lexer_from_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
			when 2 then
# line 1 "NONE"
		begin
ts = p
		end
# line 265 "lib/specspeak/lexer.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _lexer_indicies[_trans]
	end
	if _goto_level <= _eof_trans
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 3 then
# line 1 "NONE"
		begin
te = p+1
		end
when 4 then
# line 14 "ragel/lexer.rl"
		begin
act = 3;		end
when 5 then
# line 12 "ragel/lexer.rl"
		begin
te = p+1
 begin  emit_keyword(token_array, data, ts, te)  end
		end
when 6 then
# line 16 "ragel/lexer.rl"
		begin
te = p+1
		end
when 7 then
# line 13 "ragel/lexer.rl"
		begin
te = p
p = p - 1; begin  token_array << [:STRING, data[ts...te].pack("c*")]  end
		end
when 8 then
# line 14 "ragel/lexer.rl"
		begin
te = p
p = p - 1; begin  emit_row(data, token_array, ts, te)  end
		end
when 9 then
# line 1 "NONE"
		begin
	case act
	when 0 then
	begin	begin
		cs = 0
		_trigger_goto = true
		_goto_level = _again
		break
	end
end
	when 3 then
	begin begin p = ((te))-1; end
 emit_row(data, token_array, ts, te) end
end 
			end
# line 381 "lib/specspeak/lexer.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _lexer_to_state_actions[cs]
	_nacts = _lexer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _lexer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
when 1 then
# line 1 "NONE"
		begin
act = 0
		end
# line 406 "lib/specspeak/lexer.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	if _lexer_eof_trans[cs] > 0
		_trans = _lexer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 51 "ragel/lexer.rl"

      token_array
    end

  end

end