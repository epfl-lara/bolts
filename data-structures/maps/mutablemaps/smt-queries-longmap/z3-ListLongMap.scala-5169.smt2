; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70026 () Bool)

(assert start!70026)

(declare-fun b_free!12423 () Bool)

(declare-fun b_next!12423 () Bool)

(assert (=> start!70026 (= b_free!12423 (not b_next!12423))))

(declare-fun tp!43983 () Bool)

(declare-fun b_and!21213 () Bool)

(assert (=> start!70026 (= tp!43983 b_and!21213)))

(declare-fun b!813437 () Bool)

(declare-fun res!555807 () Bool)

(declare-fun e!450800 () Bool)

(assert (=> b!813437 (=> (not res!555807) (not e!450800))))

(declare-datatypes ((array!44456 0))(
  ( (array!44457 (arr!21284 (Array (_ BitVec 32) (_ BitVec 64))) (size!21705 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44456)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44456 (_ BitVec 32)) Bool)

(assert (=> b!813437 (= res!555807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22780 () Bool)

(declare-fun mapRes!22780 () Bool)

(declare-fun tp!43984 () Bool)

(declare-fun e!450797 () Bool)

(assert (=> mapNonEmpty!22780 (= mapRes!22780 (and tp!43984 e!450797))))

(declare-datatypes ((V!23845 0))(
  ( (V!23846 (val!7114 Int)) )
))
(declare-datatypes ((ValueCell!6651 0))(
  ( (ValueCellFull!6651 (v!9537 V!23845)) (EmptyCell!6651) )
))
(declare-fun mapRest!22780 () (Array (_ BitVec 32) ValueCell!6651))

(declare-fun mapValue!22780 () ValueCell!6651)

(declare-datatypes ((array!44458 0))(
  ( (array!44459 (arr!21285 (Array (_ BitVec 32) ValueCell!6651)) (size!21706 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44458)

(declare-fun mapKey!22780 () (_ BitVec 32))

(assert (=> mapNonEmpty!22780 (= (arr!21285 _values!788) (store mapRest!22780 mapKey!22780 mapValue!22780))))

(declare-fun mapIsEmpty!22780 () Bool)

(assert (=> mapIsEmpty!22780 mapRes!22780))

(declare-fun b!813438 () Bool)

(declare-fun res!555806 () Bool)

(assert (=> b!813438 (=> (not res!555806) (not e!450800))))

(declare-datatypes ((List!15195 0))(
  ( (Nil!15192) (Cons!15191 (h!16320 (_ BitVec 64)) (t!21520 List!15195)) )
))
(declare-fun arrayNoDuplicates!0 (array!44456 (_ BitVec 32) List!15195) Bool)

(assert (=> b!813438 (= res!555806 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15192))))

(declare-fun res!555809 () Bool)

(assert (=> start!70026 (=> (not res!555809) (not e!450800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70026 (= res!555809 (validMask!0 mask!1312))))

(assert (=> start!70026 e!450800))

(declare-fun tp_is_empty!14133 () Bool)

(assert (=> start!70026 tp_is_empty!14133))

(declare-fun array_inv!17025 (array!44456) Bool)

(assert (=> start!70026 (array_inv!17025 _keys!976)))

(assert (=> start!70026 true))

(declare-fun e!450799 () Bool)

(declare-fun array_inv!17026 (array!44458) Bool)

(assert (=> start!70026 (and (array_inv!17026 _values!788) e!450799)))

(assert (=> start!70026 tp!43983))

(declare-fun b!813439 () Bool)

(assert (=> b!813439 (= e!450800 false)))

(declare-datatypes ((tuple2!9320 0))(
  ( (tuple2!9321 (_1!4670 (_ BitVec 64)) (_2!4670 V!23845)) )
))
(declare-datatypes ((List!15196 0))(
  ( (Nil!15193) (Cons!15192 (h!16321 tuple2!9320) (t!21521 List!15196)) )
))
(declare-datatypes ((ListLongMap!8157 0))(
  ( (ListLongMap!8158 (toList!4094 List!15196)) )
))
(declare-fun lt!364285 () ListLongMap!8157)

(declare-fun zeroValueAfter!34 () V!23845)

(declare-fun minValue!754 () V!23845)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2143 (array!44456 array!44458 (_ BitVec 32) (_ BitVec 32) V!23845 V!23845 (_ BitVec 32) Int) ListLongMap!8157)

(assert (=> b!813439 (= lt!364285 (getCurrentListMapNoExtraKeys!2143 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23845)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364286 () ListLongMap!8157)

(assert (=> b!813439 (= lt!364286 (getCurrentListMapNoExtraKeys!2143 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813440 () Bool)

(assert (=> b!813440 (= e!450797 tp_is_empty!14133)))

(declare-fun b!813441 () Bool)

(declare-fun res!555808 () Bool)

(assert (=> b!813441 (=> (not res!555808) (not e!450800))))

(assert (=> b!813441 (= res!555808 (and (= (size!21706 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21705 _keys!976) (size!21706 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813442 () Bool)

(declare-fun e!450796 () Bool)

(assert (=> b!813442 (= e!450796 tp_is_empty!14133)))

(declare-fun b!813443 () Bool)

(assert (=> b!813443 (= e!450799 (and e!450796 mapRes!22780))))

(declare-fun condMapEmpty!22780 () Bool)

(declare-fun mapDefault!22780 () ValueCell!6651)

(assert (=> b!813443 (= condMapEmpty!22780 (= (arr!21285 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6651)) mapDefault!22780)))))

(assert (= (and start!70026 res!555809) b!813441))

(assert (= (and b!813441 res!555808) b!813437))

(assert (= (and b!813437 res!555807) b!813438))

(assert (= (and b!813438 res!555806) b!813439))

(assert (= (and b!813443 condMapEmpty!22780) mapIsEmpty!22780))

(assert (= (and b!813443 (not condMapEmpty!22780)) mapNonEmpty!22780))

(get-info :version)

(assert (= (and mapNonEmpty!22780 ((_ is ValueCellFull!6651) mapValue!22780)) b!813440))

(assert (= (and b!813443 ((_ is ValueCellFull!6651) mapDefault!22780)) b!813442))

(assert (= start!70026 b!813443))

(declare-fun m!755523 () Bool)

(assert (=> mapNonEmpty!22780 m!755523))

(declare-fun m!755525 () Bool)

(assert (=> b!813437 m!755525))

(declare-fun m!755527 () Bool)

(assert (=> start!70026 m!755527))

(declare-fun m!755529 () Bool)

(assert (=> start!70026 m!755529))

(declare-fun m!755531 () Bool)

(assert (=> start!70026 m!755531))

(declare-fun m!755533 () Bool)

(assert (=> b!813438 m!755533))

(declare-fun m!755535 () Bool)

(assert (=> b!813439 m!755535))

(declare-fun m!755537 () Bool)

(assert (=> b!813439 m!755537))

(check-sat (not start!70026) (not b!813438) tp_is_empty!14133 (not b!813437) (not b_next!12423) (not b!813439) b_and!21213 (not mapNonEmpty!22780))
(check-sat b_and!21213 (not b_next!12423))
