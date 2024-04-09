; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94642 () Bool)

(assert start!94642)

(declare-fun b_free!21889 () Bool)

(declare-fun b_next!21889 () Bool)

(assert (=> start!94642 (= b_free!21889 (not b_next!21889))))

(declare-fun tp!77120 () Bool)

(declare-fun b_and!34719 () Bool)

(assert (=> start!94642 (= tp!77120 b_and!34719)))

(declare-fun b!1069672 () Bool)

(declare-fun res!713773 () Bool)

(declare-fun e!610539 () Bool)

(assert (=> b!1069672 (=> (not res!713773) (not e!610539))))

(declare-datatypes ((array!68346 0))(
  ( (array!68347 (arr!32867 (Array (_ BitVec 32) (_ BitVec 64))) (size!33404 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68346)

(declare-datatypes ((List!23057 0))(
  ( (Nil!23054) (Cons!23053 (h!24262 (_ BitVec 64)) (t!32393 List!23057)) )
))
(declare-fun arrayNoDuplicates!0 (array!68346 (_ BitVec 32) List!23057) Bool)

(assert (=> b!1069672 (= res!713773 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23054))))

(declare-fun mapNonEmpty!40249 () Bool)

(declare-fun mapRes!40249 () Bool)

(declare-fun tp!77121 () Bool)

(declare-fun e!610540 () Bool)

(assert (=> mapNonEmpty!40249 (= mapRes!40249 (and tp!77121 e!610540))))

(declare-datatypes ((V!39401 0))(
  ( (V!39402 (val!12900 Int)) )
))
(declare-datatypes ((ValueCell!12146 0))(
  ( (ValueCellFull!12146 (v!15517 V!39401)) (EmptyCell!12146) )
))
(declare-fun mapRest!40249 () (Array (_ BitVec 32) ValueCell!12146))

(declare-fun mapValue!40249 () ValueCell!12146)

(declare-fun mapKey!40249 () (_ BitVec 32))

(declare-datatypes ((array!68348 0))(
  ( (array!68349 (arr!32868 (Array (_ BitVec 32) ValueCell!12146)) (size!33405 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68348)

(assert (=> mapNonEmpty!40249 (= (arr!32868 _values!955) (store mapRest!40249 mapKey!40249 mapValue!40249))))

(declare-fun b!1069673 () Bool)

(declare-fun e!610541 () Bool)

(declare-fun tp_is_empty!25699 () Bool)

(assert (=> b!1069673 (= e!610541 tp_is_empty!25699)))

(declare-fun mapIsEmpty!40249 () Bool)

(assert (=> mapIsEmpty!40249 mapRes!40249))

(declare-fun b!1069675 () Bool)

(declare-fun e!610538 () Bool)

(assert (=> b!1069675 (= e!610538 (and e!610541 mapRes!40249))))

(declare-fun condMapEmpty!40249 () Bool)

(declare-fun mapDefault!40249 () ValueCell!12146)

