; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70744 () Bool)

(assert start!70744)

(declare-fun b_free!12993 () Bool)

(declare-fun b_next!12993 () Bool)

(assert (=> start!70744 (= b_free!12993 (not b_next!12993))))

(declare-fun tp!45720 () Bool)

(declare-fun b_and!21873 () Bool)

(assert (=> start!70744 (= tp!45720 b_and!21873)))

(declare-fun res!560367 () Bool)

(declare-fun e!456466 () Bool)

(assert (=> start!70744 (=> (not res!560367) (not e!456466))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70744 (= res!560367 (validMask!0 mask!1312))))

(assert (=> start!70744 e!456466))

(declare-fun tp_is_empty!14703 () Bool)

(assert (=> start!70744 tp_is_empty!14703))

(declare-datatypes ((array!45562 0))(
  ( (array!45563 (arr!21828 (Array (_ BitVec 32) (_ BitVec 64))) (size!22249 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45562)

(declare-fun array_inv!17411 (array!45562) Bool)

(assert (=> start!70744 (array_inv!17411 _keys!976)))

(assert (=> start!70744 true))

(declare-datatypes ((V!24605 0))(
  ( (V!24606 (val!7399 Int)) )
))
(declare-datatypes ((ValueCell!6936 0))(
  ( (ValueCellFull!6936 (v!9826 V!24605)) (EmptyCell!6936) )
))
(declare-datatypes ((array!45564 0))(
  ( (array!45565 (arr!21829 (Array (_ BitVec 32) ValueCell!6936)) (size!22250 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45564)

(declare-fun e!456465 () Bool)

(declare-fun array_inv!17412 (array!45564) Bool)

(assert (=> start!70744 (and (array_inv!17412 _values!788) e!456465)))

(assert (=> start!70744 tp!45720))

(declare-fun b!821274 () Bool)

(declare-fun e!456462 () Bool)

(assert (=> b!821274 (= e!456462 tp_is_empty!14703)))

(declare-fun b!821275 () Bool)

(declare-fun e!456461 () Bool)

(assert (=> b!821275 (= e!456461 tp_is_empty!14703)))

(declare-fun b!821276 () Bool)

(declare-fun res!560368 () Bool)

(assert (=> b!821276 (=> (not res!560368) (not e!456466))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821276 (= res!560368 (and (= (size!22250 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22249 _keys!976) (size!22250 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821277 () Bool)

(declare-fun mapRes!23662 () Bool)

(assert (=> b!821277 (= e!456465 (and e!456462 mapRes!23662))))

(declare-fun condMapEmpty!23662 () Bool)

(declare-fun mapDefault!23662 () ValueCell!6936)

(assert (=> b!821277 (= condMapEmpty!23662 (= (arr!21829 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6936)) mapDefault!23662)))))

(declare-fun b!821278 () Bool)

(declare-fun e!456464 () Bool)

(assert (=> b!821278 (= e!456464 true)))

(declare-fun zeroValueBefore!34 () V!24605)

(declare-fun minValue!754 () V!24605)

(declare-datatypes ((tuple2!9754 0))(
  ( (tuple2!9755 (_1!4887 (_ BitVec 64)) (_2!4887 V!24605)) )
))
(declare-datatypes ((List!15614 0))(
  ( (Nil!15611) (Cons!15610 (h!16739 tuple2!9754) (t!21957 List!15614)) )
))
(declare-datatypes ((ListLongMap!8591 0))(
  ( (ListLongMap!8592 (toList!4311 List!15614)) )
))
(declare-fun lt!369163 () ListLongMap!8591)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2446 (array!45562 array!45564 (_ BitVec 32) (_ BitVec 32) V!24605 V!24605 (_ BitVec 32) Int) ListLongMap!8591)

(assert (=> b!821278 (= lt!369163 (getCurrentListMap!2446 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821279 () Bool)

(declare-fun res!560364 () Bool)

(assert (=> b!821279 (=> (not res!560364) (not e!456466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45562 (_ BitVec 32)) Bool)

(assert (=> b!821279 (= res!560364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821280 () Bool)

(assert (=> b!821280 (= e!456466 (not e!456464))))

(declare-fun res!560365 () Bool)

(assert (=> b!821280 (=> res!560365 e!456464)))

(assert (=> b!821280 (= res!560365 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369164 () ListLongMap!8591)

(declare-fun lt!369165 () ListLongMap!8591)

(assert (=> b!821280 (= lt!369164 lt!369165)))

(declare-datatypes ((Unit!28071 0))(
  ( (Unit!28072) )
))
(declare-fun lt!369166 () Unit!28071)

(declare-fun zeroValueAfter!34 () V!24605)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!459 (array!45562 array!45564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24605 V!24605 V!24605 V!24605 (_ BitVec 32) Int) Unit!28071)

(assert (=> b!821280 (= lt!369166 (lemmaNoChangeToArrayThenSameMapNoExtras!459 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2343 (array!45562 array!45564 (_ BitVec 32) (_ BitVec 32) V!24605 V!24605 (_ BitVec 32) Int) ListLongMap!8591)

(assert (=> b!821280 (= lt!369165 (getCurrentListMapNoExtraKeys!2343 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821280 (= lt!369164 (getCurrentListMapNoExtraKeys!2343 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821281 () Bool)

(declare-fun res!560366 () Bool)

(assert (=> b!821281 (=> (not res!560366) (not e!456466))))

(declare-datatypes ((List!15615 0))(
  ( (Nil!15612) (Cons!15611 (h!16740 (_ BitVec 64)) (t!21958 List!15615)) )
))
(declare-fun arrayNoDuplicates!0 (array!45562 (_ BitVec 32) List!15615) Bool)

(assert (=> b!821281 (= res!560366 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15612))))

(declare-fun mapNonEmpty!23662 () Bool)

(declare-fun tp!45721 () Bool)

(assert (=> mapNonEmpty!23662 (= mapRes!23662 (and tp!45721 e!456461))))

(declare-fun mapValue!23662 () ValueCell!6936)

(declare-fun mapRest!23662 () (Array (_ BitVec 32) ValueCell!6936))

(declare-fun mapKey!23662 () (_ BitVec 32))

(assert (=> mapNonEmpty!23662 (= (arr!21829 _values!788) (store mapRest!23662 mapKey!23662 mapValue!23662))))

(declare-fun mapIsEmpty!23662 () Bool)

(assert (=> mapIsEmpty!23662 mapRes!23662))

(assert (= (and start!70744 res!560367) b!821276))

(assert (= (and b!821276 res!560368) b!821279))

(assert (= (and b!821279 res!560364) b!821281))

(assert (= (and b!821281 res!560366) b!821280))

(assert (= (and b!821280 (not res!560365)) b!821278))

(assert (= (and b!821277 condMapEmpty!23662) mapIsEmpty!23662))

(assert (= (and b!821277 (not condMapEmpty!23662)) mapNonEmpty!23662))

(get-info :version)

(assert (= (and mapNonEmpty!23662 ((_ is ValueCellFull!6936) mapValue!23662)) b!821275))

(assert (= (and b!821277 ((_ is ValueCellFull!6936) mapDefault!23662)) b!821274))

(assert (= start!70744 b!821277))

(declare-fun m!763163 () Bool)

(assert (=> b!821280 m!763163))

(declare-fun m!763165 () Bool)

(assert (=> b!821280 m!763165))

(declare-fun m!763167 () Bool)

(assert (=> b!821280 m!763167))

(declare-fun m!763169 () Bool)

(assert (=> mapNonEmpty!23662 m!763169))

(declare-fun m!763171 () Bool)

(assert (=> start!70744 m!763171))

(declare-fun m!763173 () Bool)

(assert (=> start!70744 m!763173))

(declare-fun m!763175 () Bool)

(assert (=> start!70744 m!763175))

(declare-fun m!763177 () Bool)

(assert (=> b!821281 m!763177))

(declare-fun m!763179 () Bool)

(assert (=> b!821279 m!763179))

(declare-fun m!763181 () Bool)

(assert (=> b!821278 m!763181))

(check-sat (not b!821279) (not mapNonEmpty!23662) (not start!70744) (not b!821278) (not b!821281) tp_is_empty!14703 b_and!21873 (not b!821280) (not b_next!12993))
(check-sat b_and!21873 (not b_next!12993))
