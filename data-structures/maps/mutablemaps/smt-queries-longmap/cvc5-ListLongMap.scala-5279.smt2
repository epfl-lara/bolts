; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70868 () Bool)

(assert start!70868)

(declare-fun b_free!13081 () Bool)

(declare-fun b_next!13081 () Bool)

(assert (=> start!70868 (= b_free!13081 (not b_next!13081))))

(declare-fun tp!45991 () Bool)

(declare-fun b_and!21983 () Bool)

(assert (=> start!70868 (= tp!45991 b_and!21983)))

(declare-fun b!822668 () Bool)

(declare-fun e!457472 () Bool)

(declare-fun tp_is_empty!14791 () Bool)

(assert (=> b!822668 (= e!457472 tp_is_empty!14791)))

(declare-fun b!822669 () Bool)

(declare-fun e!457473 () Bool)

(assert (=> b!822669 (= e!457473 true)))

(declare-datatypes ((V!24723 0))(
  ( (V!24724 (val!7443 Int)) )
))
(declare-datatypes ((tuple2!9826 0))(
  ( (tuple2!9827 (_1!4923 (_ BitVec 64)) (_2!4923 V!24723)) )
))
(declare-datatypes ((List!15686 0))(
  ( (Nil!15683) (Cons!15682 (h!16811 tuple2!9826) (t!22033 List!15686)) )
))
(declare-datatypes ((ListLongMap!8663 0))(
  ( (ListLongMap!8664 (toList!4347 List!15686)) )
))
(declare-fun lt!370474 () ListLongMap!8663)

(declare-fun lt!370475 () ListLongMap!8663)

(declare-fun lt!370477 () tuple2!9826)

(declare-fun +!1850 (ListLongMap!8663 tuple2!9826) ListLongMap!8663)

(assert (=> b!822669 (= lt!370474 (+!1850 lt!370475 lt!370477))))

(declare-fun lt!370476 () ListLongMap!8663)

(declare-fun zeroValueAfter!34 () V!24723)

(declare-fun minValue!754 () V!24723)

(declare-datatypes ((Unit!28138 0))(
  ( (Unit!28139) )
))
(declare-fun lt!370471 () Unit!28138)

(declare-fun addCommutativeForDiffKeys!445 (ListLongMap!8663 (_ BitVec 64) V!24723 (_ BitVec 64) V!24723) Unit!28138)

(assert (=> b!822669 (= lt!370471 (addCommutativeForDiffKeys!445 lt!370476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370468 () ListLongMap!8663)

(assert (=> b!822669 (= lt!370468 lt!370474)))

(declare-fun lt!370473 () tuple2!9826)

(assert (=> b!822669 (= lt!370474 (+!1850 (+!1850 lt!370476 lt!370477) lt!370473))))

(assert (=> b!822669 (= lt!370477 (tuple2!9827 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370470 () ListLongMap!8663)

(assert (=> b!822669 (= lt!370470 lt!370475)))

(assert (=> b!822669 (= lt!370475 (+!1850 lt!370476 lt!370473))))

(assert (=> b!822669 (= lt!370473 (tuple2!9827 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45736 0))(
  ( (array!45737 (arr!21913 (Array (_ BitVec 32) (_ BitVec 64))) (size!22334 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45736)

(declare-datatypes ((ValueCell!6980 0))(
  ( (ValueCellFull!6980 (v!9871 V!24723)) (EmptyCell!6980) )
))
(declare-datatypes ((array!45738 0))(
  ( (array!45739 (arr!21914 (Array (_ BitVec 32) ValueCell!6980)) (size!22335 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45738)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2480 (array!45736 array!45738 (_ BitVec 32) (_ BitVec 32) V!24723 V!24723 (_ BitVec 32) Int) ListLongMap!8663)

(assert (=> b!822669 (= lt!370468 (getCurrentListMap!2480 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24723)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822669 (= lt!370470 (getCurrentListMap!2480 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822670 () Bool)

(declare-fun res!561171 () Bool)

(declare-fun e!457469 () Bool)

(assert (=> b!822670 (=> (not res!561171) (not e!457469))))

(declare-datatypes ((List!15687 0))(
  ( (Nil!15684) (Cons!15683 (h!16812 (_ BitVec 64)) (t!22034 List!15687)) )
))
(declare-fun arrayNoDuplicates!0 (array!45736 (_ BitVec 32) List!15687) Bool)

(assert (=> b!822670 (= res!561171 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15684))))

(declare-fun b!822671 () Bool)

(declare-fun res!561172 () Bool)

(assert (=> b!822671 (=> (not res!561172) (not e!457469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45736 (_ BitVec 32)) Bool)

(assert (=> b!822671 (= res!561172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822672 () Bool)

(declare-fun e!457470 () Bool)

(assert (=> b!822672 (= e!457470 tp_is_empty!14791)))

(declare-fun res!561170 () Bool)

(assert (=> start!70868 (=> (not res!561170) (not e!457469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70868 (= res!561170 (validMask!0 mask!1312))))

(assert (=> start!70868 e!457469))

(assert (=> start!70868 tp_is_empty!14791))

(declare-fun array_inv!17471 (array!45736) Bool)

(assert (=> start!70868 (array_inv!17471 _keys!976)))

(assert (=> start!70868 true))

(declare-fun e!457471 () Bool)

(declare-fun array_inv!17472 (array!45738) Bool)

(assert (=> start!70868 (and (array_inv!17472 _values!788) e!457471)))

(assert (=> start!70868 tp!45991))

(declare-fun b!822673 () Bool)

(assert (=> b!822673 (= e!457469 (not e!457473))))

(declare-fun res!561174 () Bool)

(assert (=> b!822673 (=> res!561174 e!457473)))

(assert (=> b!822673 (= res!561174 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370472 () ListLongMap!8663)

(assert (=> b!822673 (= lt!370476 lt!370472)))

(declare-fun lt!370469 () Unit!28138)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!489 (array!45736 array!45738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24723 V!24723 V!24723 V!24723 (_ BitVec 32) Int) Unit!28138)

(assert (=> b!822673 (= lt!370469 (lemmaNoChangeToArrayThenSameMapNoExtras!489 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2373 (array!45736 array!45738 (_ BitVec 32) (_ BitVec 32) V!24723 V!24723 (_ BitVec 32) Int) ListLongMap!8663)

(assert (=> b!822673 (= lt!370472 (getCurrentListMapNoExtraKeys!2373 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822673 (= lt!370476 (getCurrentListMapNoExtraKeys!2373 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822674 () Bool)

(declare-fun res!561173 () Bool)

(assert (=> b!822674 (=> (not res!561173) (not e!457469))))

(assert (=> b!822674 (= res!561173 (and (= (size!22335 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22334 _keys!976) (size!22335 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23800 () Bool)

(declare-fun mapRes!23800 () Bool)

(assert (=> mapIsEmpty!23800 mapRes!23800))

(declare-fun b!822675 () Bool)

(assert (=> b!822675 (= e!457471 (and e!457470 mapRes!23800))))

(declare-fun condMapEmpty!23800 () Bool)

(declare-fun mapDefault!23800 () ValueCell!6980)

