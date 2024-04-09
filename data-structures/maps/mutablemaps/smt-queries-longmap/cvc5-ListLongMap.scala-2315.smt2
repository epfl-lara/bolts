; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37360 () Bool)

(assert start!37360)

(declare-fun b_free!8479 () Bool)

(declare-fun b_next!8479 () Bool)

(assert (=> start!37360 (= b_free!8479 (not b_next!8479))))

(declare-fun tp!30152 () Bool)

(declare-fun b_and!15739 () Bool)

(assert (=> start!37360 (= tp!30152 b_and!15739)))

(declare-fun res!214942 () Bool)

(declare-fun e!230643 () Bool)

(assert (=> start!37360 (=> (not res!214942) (not e!230643))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37360 (= res!214942 (validMask!0 mask!970))))

(assert (=> start!37360 e!230643))

(declare-datatypes ((V!13275 0))(
  ( (V!13276 (val!4608 Int)) )
))
(declare-datatypes ((ValueCell!4220 0))(
  ( (ValueCellFull!4220 (v!6801 V!13275)) (EmptyCell!4220) )
))
(declare-datatypes ((array!22151 0))(
  ( (array!22152 (arr!10541 (Array (_ BitVec 32) ValueCell!4220)) (size!10893 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22151)

(declare-fun e!230641 () Bool)

(declare-fun array_inv!7756 (array!22151) Bool)

(assert (=> start!37360 (and (array_inv!7756 _values!506) e!230641)))

(assert (=> start!37360 tp!30152))

(assert (=> start!37360 true))

(declare-fun tp_is_empty!9127 () Bool)

(assert (=> start!37360 tp_is_empty!9127))

(declare-datatypes ((array!22153 0))(
  ( (array!22154 (arr!10542 (Array (_ BitVec 32) (_ BitVec 64))) (size!10894 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22153)

(declare-fun array_inv!7757 (array!22153) Bool)

(assert (=> start!37360 (array_inv!7757 _keys!658)))

(declare-fun b!379035 () Bool)

(declare-fun e!230637 () Bool)

(declare-fun mapRes!15255 () Bool)

(assert (=> b!379035 (= e!230641 (and e!230637 mapRes!15255))))

(declare-fun condMapEmpty!15255 () Bool)

(declare-fun mapDefault!15255 () ValueCell!4220)

