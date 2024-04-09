; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70792 () Bool)

(assert start!70792)

(declare-fun b_free!13025 () Bool)

(declare-fun b_next!13025 () Bool)

(assert (=> start!70792 (= b_free!13025 (not b_next!13025))))

(declare-fun tp!45820 () Bool)

(declare-fun b_and!21915 () Bool)

(assert (=> start!70792 (= tp!45820 b_and!21915)))

(declare-fun b!821814 () Bool)

(declare-fun e!456852 () Bool)

(declare-fun tp_is_empty!14735 () Bool)

(assert (=> b!821814 (= e!456852 tp_is_empty!14735)))

(declare-fun mapNonEmpty!23713 () Bool)

(declare-fun mapRes!23713 () Bool)

(declare-fun tp!45819 () Bool)

(assert (=> mapNonEmpty!23713 (= mapRes!23713 (and tp!45819 e!456852))))

(declare-datatypes ((V!24647 0))(
  ( (V!24648 (val!7415 Int)) )
))
(declare-datatypes ((ValueCell!6952 0))(
  ( (ValueCellFull!6952 (v!9842 V!24647)) (EmptyCell!6952) )
))
(declare-fun mapRest!23713 () (Array (_ BitVec 32) ValueCell!6952))

(declare-datatypes ((array!45624 0))(
  ( (array!45625 (arr!21858 (Array (_ BitVec 32) ValueCell!6952)) (size!22279 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45624)

(declare-fun mapKey!23713 () (_ BitVec 32))

(declare-fun mapValue!23713 () ValueCell!6952)

(assert (=> mapNonEmpty!23713 (= (arr!21858 _values!788) (store mapRest!23713 mapKey!23713 mapValue!23713))))

(declare-fun b!821815 () Bool)

(declare-fun res!560670 () Bool)

(declare-fun e!456851 () Bool)

(assert (=> b!821815 (=> (not res!560670) (not e!456851))))

(declare-datatypes ((array!45626 0))(
  ( (array!45627 (arr!21859 (Array (_ BitVec 32) (_ BitVec 64))) (size!22280 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45626)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821815 (= res!560670 (and (= (size!22279 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22280 _keys!976) (size!22279 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821816 () Bool)

(declare-fun e!456854 () Bool)

(assert (=> b!821816 (= e!456854 true)))

(declare-fun e!456857 () Bool)

(assert (=> b!821816 e!456857))

(declare-fun res!560672 () Bool)

(assert (=> b!821816 (=> (not res!560672) (not e!456857))))

(declare-datatypes ((tuple2!9782 0))(
  ( (tuple2!9783 (_1!4901 (_ BitVec 64)) (_2!4901 V!24647)) )
))
(declare-datatypes ((List!15642 0))(
  ( (Nil!15639) (Cons!15638 (h!16767 tuple2!9782) (t!21987 List!15642)) )
))
(declare-datatypes ((ListLongMap!8619 0))(
  ( (ListLongMap!8620 (toList!4325 List!15642)) )
))
(declare-fun lt!369481 () ListLongMap!8619)

(declare-fun lt!369478 () tuple2!9782)

(declare-fun lt!369479 () ListLongMap!8619)

(declare-fun +!1830 (ListLongMap!8619 tuple2!9782) ListLongMap!8619)

(assert (=> b!821816 (= res!560672 (= lt!369481 (+!1830 lt!369479 lt!369478)))))

(declare-fun minValue!754 () V!24647)

(assert (=> b!821816 (= lt!369478 (tuple2!9783 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun zeroValueAfter!34 () V!24647)

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!369482 () ListLongMap!8619)

(declare-fun getCurrentListMap!2460 (array!45626 array!45624 (_ BitVec 32) (_ BitVec 32) V!24647 V!24647 (_ BitVec 32) Int) ListLongMap!8619)

(assert (=> b!821816 (= lt!369482 (getCurrentListMap!2460 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24647)

(assert (=> b!821816 (= lt!369481 (getCurrentListMap!2460 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!560674 () Bool)

(assert (=> start!70792 (=> (not res!560674) (not e!456851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70792 (= res!560674 (validMask!0 mask!1312))))

(assert (=> start!70792 e!456851))

(assert (=> start!70792 tp_is_empty!14735))

(declare-fun array_inv!17433 (array!45626) Bool)

(assert (=> start!70792 (array_inv!17433 _keys!976)))

(assert (=> start!70792 true))

(declare-fun e!456856 () Bool)

(declare-fun array_inv!17434 (array!45624) Bool)

(assert (=> start!70792 (and (array_inv!17434 _values!788) e!456856)))

(assert (=> start!70792 tp!45820))

(declare-fun b!821817 () Bool)

(declare-fun e!456853 () Bool)

(assert (=> b!821817 (= e!456856 (and e!456853 mapRes!23713))))

(declare-fun condMapEmpty!23713 () Bool)

(declare-fun mapDefault!23713 () ValueCell!6952)

