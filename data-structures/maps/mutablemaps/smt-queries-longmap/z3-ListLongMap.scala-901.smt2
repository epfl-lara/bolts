; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20516 () Bool)

(assert start!20516)

(declare-fun b_free!5163 () Bool)

(declare-fun b_next!5163 () Bool)

(assert (=> start!20516 (= b_free!5163 (not b_next!5163))))

(declare-fun tp!18520 () Bool)

(declare-fun b_and!11927 () Bool)

(assert (=> start!20516 (= tp!18520 b_and!11927)))

(declare-fun b!203527 () Bool)

(declare-fun res!97850 () Bool)

(declare-fun e!133243 () Bool)

(assert (=> b!203527 (=> (not res!97850) (not e!133243))))

(declare-datatypes ((array!9260 0))(
  ( (array!9261 (arr!4380 (Array (_ BitVec 32) (_ BitVec 64))) (size!4705 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9260)

(declare-datatypes ((List!2798 0))(
  ( (Nil!2795) (Cons!2794 (h!3436 (_ BitVec 64)) (t!7737 List!2798)) )
))
(declare-fun arrayNoDuplicates!0 (array!9260 (_ BitVec 32) List!2798) Bool)

(assert (=> b!203527 (= res!97850 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2795))))

(declare-fun mapIsEmpty!8597 () Bool)

(declare-fun mapRes!8597 () Bool)

(assert (=> mapIsEmpty!8597 mapRes!8597))

(declare-fun b!203528 () Bool)

(declare-fun res!97851 () Bool)

(assert (=> b!203528 (=> (not res!97851) (not e!133243))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9260 (_ BitVec 32)) Bool)

(assert (=> b!203528 (= res!97851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203529 () Bool)

(declare-fun e!133241 () Bool)

(assert (=> b!203529 (= e!133243 (not e!133241))))

(declare-fun res!97852 () Bool)

(assert (=> b!203529 (=> res!97852 e!133241)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203529 (= res!97852 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6339 0))(
  ( (V!6340 (val!2554 Int)) )
))
(declare-datatypes ((ValueCell!2166 0))(
  ( (ValueCellFull!2166 (v!4520 V!6339)) (EmptyCell!2166) )
))
(declare-datatypes ((array!9262 0))(
  ( (array!9263 (arr!4381 (Array (_ BitVec 32) ValueCell!2166)) (size!4706 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9262)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6339)

(declare-fun zeroValue!615 () V!6339)

(declare-datatypes ((tuple2!3872 0))(
  ( (tuple2!3873 (_1!1946 (_ BitVec 64)) (_2!1946 V!6339)) )
))
(declare-datatypes ((List!2799 0))(
  ( (Nil!2796) (Cons!2795 (h!3437 tuple2!3872) (t!7738 List!2799)) )
))
(declare-datatypes ((ListLongMap!2799 0))(
  ( (ListLongMap!2800 (toList!1415 List!2799)) )
))
(declare-fun lt!102773 () ListLongMap!2799)

(declare-fun getCurrentListMap!985 (array!9260 array!9262 (_ BitVec 32) (_ BitVec 32) V!6339 V!6339 (_ BitVec 32) Int) ListLongMap!2799)

(assert (=> b!203529 (= lt!102773 (getCurrentListMap!985 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102770 () array!9262)

(declare-fun lt!102772 () ListLongMap!2799)

(assert (=> b!203529 (= lt!102772 (getCurrentListMap!985 _keys!825 lt!102770 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102781 () ListLongMap!2799)

(declare-fun lt!102777 () ListLongMap!2799)

(assert (=> b!203529 (and (= lt!102781 lt!102777) (= lt!102777 lt!102781))))

(declare-fun lt!102778 () ListLongMap!2799)

(declare-fun lt!102774 () tuple2!3872)

(declare-fun +!432 (ListLongMap!2799 tuple2!3872) ListLongMap!2799)

(assert (=> b!203529 (= lt!102777 (+!432 lt!102778 lt!102774))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6339)

(assert (=> b!203529 (= lt!102774 (tuple2!3873 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6165 0))(
  ( (Unit!6166) )
))
(declare-fun lt!102779 () Unit!6165)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!98 (array!9260 array!9262 (_ BitVec 32) (_ BitVec 32) V!6339 V!6339 (_ BitVec 32) (_ BitVec 64) V!6339 (_ BitVec 32) Int) Unit!6165)

(assert (=> b!203529 (= lt!102779 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!98 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!356 (array!9260 array!9262 (_ BitVec 32) (_ BitVec 32) V!6339 V!6339 (_ BitVec 32) Int) ListLongMap!2799)

(assert (=> b!203529 (= lt!102781 (getCurrentListMapNoExtraKeys!356 _keys!825 lt!102770 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203529 (= lt!102770 (array!9263 (store (arr!4381 _values!649) i!601 (ValueCellFull!2166 v!520)) (size!4706 _values!649)))))

(assert (=> b!203529 (= lt!102778 (getCurrentListMapNoExtraKeys!356 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203530 () Bool)

(declare-fun res!97855 () Bool)

(assert (=> b!203530 (=> (not res!97855) (not e!133243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203530 (= res!97855 (validKeyInArray!0 k0!843))))

(declare-fun b!203531 () Bool)

(declare-fun res!97847 () Bool)

(assert (=> b!203531 (=> (not res!97847) (not e!133243))))

(assert (=> b!203531 (= res!97847 (and (= (size!4706 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4705 _keys!825) (size!4706 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203532 () Bool)

(declare-fun e!133246 () Bool)

(declare-fun e!133245 () Bool)

(assert (=> b!203532 (= e!133246 (and e!133245 mapRes!8597))))

(declare-fun condMapEmpty!8597 () Bool)

(declare-fun mapDefault!8597 () ValueCell!2166)

(assert (=> b!203532 (= condMapEmpty!8597 (= (arr!4381 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2166)) mapDefault!8597)))))

(declare-fun b!203533 () Bool)

(declare-fun res!97848 () Bool)

(assert (=> b!203533 (=> (not res!97848) (not e!133243))))

(assert (=> b!203533 (= res!97848 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4705 _keys!825))))))

(declare-fun b!203534 () Bool)

(declare-fun e!133240 () Bool)

(assert (=> b!203534 (= e!133241 e!133240)))

(declare-fun res!97853 () Bool)

(assert (=> b!203534 (=> res!97853 e!133240)))

(assert (=> b!203534 (= res!97853 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!102776 () ListLongMap!2799)

(assert (=> b!203534 (= lt!102772 lt!102776)))

(declare-fun lt!102771 () tuple2!3872)

(assert (=> b!203534 (= lt!102776 (+!432 lt!102777 lt!102771))))

(declare-fun lt!102780 () ListLongMap!2799)

(assert (=> b!203534 (= lt!102773 lt!102780)))

(assert (=> b!203534 (= lt!102780 (+!432 lt!102778 lt!102771))))

(assert (=> b!203534 (= lt!102772 (+!432 lt!102781 lt!102771))))

(assert (=> b!203534 (= lt!102771 (tuple2!3873 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203535 () Bool)

(declare-fun res!97849 () Bool)

(assert (=> b!203535 (=> (not res!97849) (not e!133243))))

(assert (=> b!203535 (= res!97849 (= (select (arr!4380 _keys!825) i!601) k0!843))))

(declare-fun b!203536 () Bool)

(declare-fun tp_is_empty!5019 () Bool)

(assert (=> b!203536 (= e!133245 tp_is_empty!5019)))

(declare-fun b!203537 () Bool)

(assert (=> b!203537 (= e!133240 true)))

(assert (=> b!203537 (= lt!102776 (+!432 lt!102780 lt!102774))))

(declare-fun lt!102775 () Unit!6165)

(declare-fun addCommutativeForDiffKeys!144 (ListLongMap!2799 (_ BitVec 64) V!6339 (_ BitVec 64) V!6339) Unit!6165)

(assert (=> b!203537 (= lt!102775 (addCommutativeForDiffKeys!144 lt!102778 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun res!97854 () Bool)

(assert (=> start!20516 (=> (not res!97854) (not e!133243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20516 (= res!97854 (validMask!0 mask!1149))))

(assert (=> start!20516 e!133243))

(declare-fun array_inv!2885 (array!9262) Bool)

(assert (=> start!20516 (and (array_inv!2885 _values!649) e!133246)))

(assert (=> start!20516 true))

(assert (=> start!20516 tp_is_empty!5019))

(declare-fun array_inv!2886 (array!9260) Bool)

(assert (=> start!20516 (array_inv!2886 _keys!825)))

(assert (=> start!20516 tp!18520))

(declare-fun b!203538 () Bool)

(declare-fun e!133244 () Bool)

(assert (=> b!203538 (= e!133244 tp_is_empty!5019)))

(declare-fun mapNonEmpty!8597 () Bool)

(declare-fun tp!18521 () Bool)

(assert (=> mapNonEmpty!8597 (= mapRes!8597 (and tp!18521 e!133244))))

(declare-fun mapValue!8597 () ValueCell!2166)

(declare-fun mapRest!8597 () (Array (_ BitVec 32) ValueCell!2166))

(declare-fun mapKey!8597 () (_ BitVec 32))

(assert (=> mapNonEmpty!8597 (= (arr!4381 _values!649) (store mapRest!8597 mapKey!8597 mapValue!8597))))

(assert (= (and start!20516 res!97854) b!203531))

(assert (= (and b!203531 res!97847) b!203528))

(assert (= (and b!203528 res!97851) b!203527))

(assert (= (and b!203527 res!97850) b!203533))

(assert (= (and b!203533 res!97848) b!203530))

(assert (= (and b!203530 res!97855) b!203535))

(assert (= (and b!203535 res!97849) b!203529))

(assert (= (and b!203529 (not res!97852)) b!203534))

(assert (= (and b!203534 (not res!97853)) b!203537))

(assert (= (and b!203532 condMapEmpty!8597) mapIsEmpty!8597))

(assert (= (and b!203532 (not condMapEmpty!8597)) mapNonEmpty!8597))

(get-info :version)

(assert (= (and mapNonEmpty!8597 ((_ is ValueCellFull!2166) mapValue!8597)) b!203538))

(assert (= (and b!203532 ((_ is ValueCellFull!2166) mapDefault!8597)) b!203536))

(assert (= start!20516 b!203532))

(declare-fun m!230989 () Bool)

(assert (=> b!203530 m!230989))

(declare-fun m!230991 () Bool)

(assert (=> b!203534 m!230991))

(declare-fun m!230993 () Bool)

(assert (=> b!203534 m!230993))

(declare-fun m!230995 () Bool)

(assert (=> b!203534 m!230995))

(declare-fun m!230997 () Bool)

(assert (=> start!20516 m!230997))

(declare-fun m!230999 () Bool)

(assert (=> start!20516 m!230999))

(declare-fun m!231001 () Bool)

(assert (=> start!20516 m!231001))

(declare-fun m!231003 () Bool)

(assert (=> b!203537 m!231003))

(declare-fun m!231005 () Bool)

(assert (=> b!203537 m!231005))

(declare-fun m!231007 () Bool)

(assert (=> b!203527 m!231007))

(declare-fun m!231009 () Bool)

(assert (=> mapNonEmpty!8597 m!231009))

(declare-fun m!231011 () Bool)

(assert (=> b!203529 m!231011))

(declare-fun m!231013 () Bool)

(assert (=> b!203529 m!231013))

(declare-fun m!231015 () Bool)

(assert (=> b!203529 m!231015))

(declare-fun m!231017 () Bool)

(assert (=> b!203529 m!231017))

(declare-fun m!231019 () Bool)

(assert (=> b!203529 m!231019))

(declare-fun m!231021 () Bool)

(assert (=> b!203529 m!231021))

(declare-fun m!231023 () Bool)

(assert (=> b!203529 m!231023))

(declare-fun m!231025 () Bool)

(assert (=> b!203535 m!231025))

(declare-fun m!231027 () Bool)

(assert (=> b!203528 m!231027))

(check-sat b_and!11927 (not b!203528) (not b_next!5163) (not mapNonEmpty!8597) (not start!20516) (not b!203529) (not b!203530) (not b!203527) tp_is_empty!5019 (not b!203537) (not b!203534))
(check-sat b_and!11927 (not b_next!5163))
