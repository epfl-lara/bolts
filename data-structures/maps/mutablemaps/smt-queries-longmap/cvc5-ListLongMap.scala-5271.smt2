; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70800 () Bool)

(assert start!70800)

(declare-fun b_free!13033 () Bool)

(declare-fun b_next!13033 () Bool)

(assert (=> start!70800 (= b_free!13033 (not b_next!13033))))

(declare-fun tp!45843 () Bool)

(declare-fun b_and!21923 () Bool)

(assert (=> start!70800 (= tp!45843 b_and!21923)))

(declare-fun b!821911 () Bool)

(declare-fun e!456929 () Bool)

(assert (=> b!821911 (= e!456929 true)))

(declare-datatypes ((V!24659 0))(
  ( (V!24660 (val!7419 Int)) )
))
(declare-datatypes ((tuple2!9788 0))(
  ( (tuple2!9789 (_1!4904 (_ BitVec 64)) (_2!4904 V!24659)) )
))
(declare-datatypes ((List!15647 0))(
  ( (Nil!15644) (Cons!15643 (h!16772 tuple2!9788) (t!21992 List!15647)) )
))
(declare-datatypes ((ListLongMap!8625 0))(
  ( (ListLongMap!8626 (toList!4328 List!15647)) )
))
(declare-fun lt!369599 () ListLongMap!8625)

(declare-fun lt!369600 () ListLongMap!8625)

(declare-fun lt!369595 () tuple2!9788)

(declare-fun +!1832 (ListLongMap!8625 tuple2!9788) ListLongMap!8625)

(assert (=> b!821911 (= lt!369599 (+!1832 lt!369600 lt!369595))))

(declare-fun lt!369601 () ListLongMap!8625)

(declare-datatypes ((Unit!28098 0))(
  ( (Unit!28099) )
))
(declare-fun lt!369597 () Unit!28098)

(declare-fun zeroValueAfter!34 () V!24659)

(declare-fun minValue!754 () V!24659)

(declare-fun addCommutativeForDiffKeys!427 (ListLongMap!8625 (_ BitVec 64) V!24659 (_ BitVec 64) V!24659) Unit!28098)

(assert (=> b!821911 (= lt!369597 (addCommutativeForDiffKeys!427 lt!369601 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369596 () ListLongMap!8625)

(assert (=> b!821911 (= lt!369596 lt!369599)))

(declare-fun lt!369594 () tuple2!9788)

(assert (=> b!821911 (= lt!369599 (+!1832 (+!1832 lt!369601 lt!369595) lt!369594))))

(assert (=> b!821911 (= lt!369595 (tuple2!9789 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369598 () ListLongMap!8625)

(assert (=> b!821911 (= lt!369598 lt!369600)))

(assert (=> b!821911 (= lt!369600 (+!1832 lt!369601 lt!369594))))

(assert (=> b!821911 (= lt!369594 (tuple2!9789 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45640 0))(
  ( (array!45641 (arr!21866 (Array (_ BitVec 32) (_ BitVec 64))) (size!22287 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45640)

(declare-datatypes ((ValueCell!6956 0))(
  ( (ValueCellFull!6956 (v!9846 V!24659)) (EmptyCell!6956) )
))
(declare-datatypes ((array!45642 0))(
  ( (array!45643 (arr!21867 (Array (_ BitVec 32) ValueCell!6956)) (size!22288 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45642)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2462 (array!45640 array!45642 (_ BitVec 32) (_ BitVec 32) V!24659 V!24659 (_ BitVec 32) Int) ListLongMap!8625)

(assert (=> b!821911 (= lt!369596 (getCurrentListMap!2462 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24659)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!821911 (= lt!369598 (getCurrentListMap!2462 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23725 () Bool)

(declare-fun mapRes!23725 () Bool)

(assert (=> mapIsEmpty!23725 mapRes!23725))

(declare-fun res!560731 () Bool)

(declare-fun e!456928 () Bool)

(assert (=> start!70800 (=> (not res!560731) (not e!456928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70800 (= res!560731 (validMask!0 mask!1312))))

(assert (=> start!70800 e!456928))

(declare-fun tp_is_empty!14743 () Bool)

(assert (=> start!70800 tp_is_empty!14743))

(declare-fun array_inv!17439 (array!45640) Bool)

(assert (=> start!70800 (array_inv!17439 _keys!976)))

(assert (=> start!70800 true))

(declare-fun e!456927 () Bool)

(declare-fun array_inv!17440 (array!45642) Bool)

(assert (=> start!70800 (and (array_inv!17440 _values!788) e!456927)))

(assert (=> start!70800 tp!45843))

(declare-fun b!821912 () Bool)

(declare-fun res!560734 () Bool)

(assert (=> b!821912 (=> (not res!560734) (not e!456928))))

(assert (=> b!821912 (= res!560734 (and (= (size!22288 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22287 _keys!976) (size!22288 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821913 () Bool)

(declare-fun e!456925 () Bool)

(assert (=> b!821913 (= e!456925 tp_is_empty!14743)))

(declare-fun b!821914 () Bool)

(assert (=> b!821914 (= e!456927 (and e!456925 mapRes!23725))))

(declare-fun condMapEmpty!23725 () Bool)

(declare-fun mapDefault!23725 () ValueCell!6956)

