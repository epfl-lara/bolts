; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70830 () Bool)

(assert start!70830)

(declare-fun b_free!13063 () Bool)

(declare-fun b_next!13063 () Bool)

(assert (=> start!70830 (= b_free!13063 (not b_next!13063))))

(declare-fun tp!45934 () Bool)

(declare-fun b_and!21953 () Bool)

(assert (=> start!70830 (= tp!45934 b_and!21953)))

(declare-fun b!822271 () Bool)

(declare-fun e!457199 () Bool)

(declare-fun tp_is_empty!14773 () Bool)

(assert (=> b!822271 (= e!457199 tp_is_empty!14773)))

(declare-fun b!822272 () Bool)

(declare-fun e!457198 () Bool)

(declare-fun e!457196 () Bool)

(assert (=> b!822272 (= e!457198 (not e!457196))))

(declare-fun res!560956 () Bool)

(assert (=> b!822272 (=> res!560956 e!457196)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822272 (= res!560956 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24699 0))(
  ( (V!24700 (val!7434 Int)) )
))
(declare-datatypes ((tuple2!9810 0))(
  ( (tuple2!9811 (_1!4915 (_ BitVec 64)) (_2!4915 V!24699)) )
))
(declare-datatypes ((List!15671 0))(
  ( (Nil!15668) (Cons!15667 (h!16796 tuple2!9810) (t!22016 List!15671)) )
))
(declare-datatypes ((ListLongMap!8647 0))(
  ( (ListLongMap!8648 (toList!4339 List!15671)) )
))
(declare-fun lt!370046 () ListLongMap!8647)

(declare-fun lt!370043 () ListLongMap!8647)

(assert (=> b!822272 (= lt!370046 lt!370043)))

(declare-fun zeroValueBefore!34 () V!24699)

(declare-datatypes ((array!45698 0))(
  ( (array!45699 (arr!21895 (Array (_ BitVec 32) (_ BitVec 64))) (size!22316 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45698)

(declare-fun zeroValueAfter!34 () V!24699)

(declare-fun minValue!754 () V!24699)

(declare-datatypes ((ValueCell!6971 0))(
  ( (ValueCellFull!6971 (v!9861 V!24699)) (EmptyCell!6971) )
))
(declare-datatypes ((array!45700 0))(
  ( (array!45701 (arr!21896 (Array (_ BitVec 32) ValueCell!6971)) (size!22317 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45700)

(declare-datatypes ((Unit!28120 0))(
  ( (Unit!28121) )
))
(declare-fun lt!370049 () Unit!28120)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!481 (array!45698 array!45700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24699 V!24699 V!24699 V!24699 (_ BitVec 32) Int) Unit!28120)

(assert (=> b!822272 (= lt!370049 (lemmaNoChangeToArrayThenSameMapNoExtras!481 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2365 (array!45698 array!45700 (_ BitVec 32) (_ BitVec 32) V!24699 V!24699 (_ BitVec 32) Int) ListLongMap!8647)

(assert (=> b!822272 (= lt!370043 (getCurrentListMapNoExtraKeys!2365 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822272 (= lt!370046 (getCurrentListMapNoExtraKeys!2365 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822273 () Bool)

(declare-fun res!560959 () Bool)

(assert (=> b!822273 (=> (not res!560959) (not e!457198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45698 (_ BitVec 32)) Bool)

(assert (=> b!822273 (= res!560959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822274 () Bool)

(declare-fun e!457197 () Bool)

(declare-fun e!457194 () Bool)

(declare-fun mapRes!23770 () Bool)

(assert (=> b!822274 (= e!457197 (and e!457194 mapRes!23770))))

(declare-fun condMapEmpty!23770 () Bool)

(declare-fun mapDefault!23770 () ValueCell!6971)

