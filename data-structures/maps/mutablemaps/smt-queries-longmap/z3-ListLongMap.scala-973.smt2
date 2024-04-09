; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21090 () Bool)

(assert start!21090)

(declare-fun b_free!5589 () Bool)

(declare-fun b_next!5589 () Bool)

(assert (=> start!21090 (= b_free!5589 (not b_next!5589))))

(declare-fun tp!19829 () Bool)

(declare-fun b_and!12437 () Bool)

(assert (=> start!21090 (= tp!19829 b_and!12437)))

(declare-fun b!211975 () Bool)

(declare-fun res!103600 () Bool)

(declare-fun e!137961 () Bool)

(assert (=> b!211975 (=> (not res!103600) (not e!137961))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!10104 0))(
  ( (array!10105 (arr!4795 (Array (_ BitVec 32) (_ BitVec 64))) (size!5120 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10104)

(assert (=> b!211975 (= res!103600 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5120 _keys!825))))))

(declare-fun b!211976 () Bool)

(declare-fun e!137960 () Bool)

(declare-datatypes ((V!6915 0))(
  ( (V!6916 (val!2770 Int)) )
))
(declare-datatypes ((ValueCell!2382 0))(
  ( (ValueCellFull!2382 (v!4764 V!6915)) (EmptyCell!2382) )
))
(declare-datatypes ((array!10106 0))(
  ( (array!10107 (arr!4796 (Array (_ BitVec 32) ValueCell!2382)) (size!5121 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10106)

(assert (=> b!211976 (= e!137960 (bvslt i!601 (size!5121 _values!649)))))

(declare-datatypes ((tuple2!4186 0))(
  ( (tuple2!4187 (_1!2103 (_ BitVec 64)) (_2!2103 V!6915)) )
))
(declare-datatypes ((List!3101 0))(
  ( (Nil!3098) (Cons!3097 (h!3739 tuple2!4186) (t!8054 List!3101)) )
))
(declare-datatypes ((ListLongMap!3113 0))(
  ( (ListLongMap!3114 (toList!1572 List!3101)) )
))
(declare-fun lt!109190 () ListLongMap!3113)

(declare-fun lt!109181 () ListLongMap!3113)

(declare-fun lt!109184 () tuple2!4186)

(declare-fun +!565 (ListLongMap!3113 tuple2!4186) ListLongMap!3113)

(assert (=> b!211976 (= lt!109190 (+!565 lt!109181 lt!109184))))

(declare-fun lt!109189 () ListLongMap!3113)

(declare-datatypes ((Unit!6431 0))(
  ( (Unit!6432) )
))
(declare-fun lt!109183 () Unit!6431)

(declare-fun v!520 () V!6915)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6915)

(declare-fun addCommutativeForDiffKeys!199 (ListLongMap!3113 (_ BitVec 64) V!6915 (_ BitVec 64) V!6915) Unit!6431)

(assert (=> b!211976 (= lt!109183 (addCommutativeForDiffKeys!199 lt!109189 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211977 () Bool)

(declare-fun res!103603 () Bool)

(assert (=> b!211977 (=> (not res!103603) (not e!137961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211977 (= res!103603 (validKeyInArray!0 k0!843))))

(declare-fun b!211978 () Bool)

(declare-fun res!103598 () Bool)

(assert (=> b!211978 (=> (not res!103598) (not e!137961))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10104 (_ BitVec 32)) Bool)

(assert (=> b!211978 (= res!103598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211979 () Bool)

(declare-fun e!137956 () Bool)

(declare-fun e!137958 () Bool)

(declare-fun mapRes!9266 () Bool)

(assert (=> b!211979 (= e!137956 (and e!137958 mapRes!9266))))

(declare-fun condMapEmpty!9266 () Bool)

(declare-fun mapDefault!9266 () ValueCell!2382)

(assert (=> b!211979 (= condMapEmpty!9266 (= (arr!4796 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2382)) mapDefault!9266)))))

(declare-fun mapIsEmpty!9266 () Bool)

(assert (=> mapIsEmpty!9266 mapRes!9266))

(declare-fun res!103599 () Bool)

(assert (=> start!21090 (=> (not res!103599) (not e!137961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21090 (= res!103599 (validMask!0 mask!1149))))

(assert (=> start!21090 e!137961))

(declare-fun array_inv!3163 (array!10106) Bool)

(assert (=> start!21090 (and (array_inv!3163 _values!649) e!137956)))

(assert (=> start!21090 true))

(declare-fun tp_is_empty!5451 () Bool)

(assert (=> start!21090 tp_is_empty!5451))

(declare-fun array_inv!3164 (array!10104) Bool)

(assert (=> start!21090 (array_inv!3164 _keys!825)))

(assert (=> start!21090 tp!19829))

(declare-fun b!211980 () Bool)

(declare-fun e!137957 () Bool)

(assert (=> b!211980 (= e!137957 tp_is_empty!5451)))

(declare-fun b!211981 () Bool)

(declare-fun res!103601 () Bool)

(assert (=> b!211981 (=> (not res!103601) (not e!137961))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!211981 (= res!103601 (and (= (size!5121 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5120 _keys!825) (size!5121 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211982 () Bool)

(declare-fun res!103595 () Bool)

(assert (=> b!211982 (=> (not res!103595) (not e!137961))))

(assert (=> b!211982 (= res!103595 (= (select (arr!4795 _keys!825) i!601) k0!843))))

(declare-fun b!211983 () Bool)

(declare-fun res!103596 () Bool)

(assert (=> b!211983 (=> (not res!103596) (not e!137961))))

(declare-datatypes ((List!3102 0))(
  ( (Nil!3099) (Cons!3098 (h!3740 (_ BitVec 64)) (t!8055 List!3102)) )
))
(declare-fun arrayNoDuplicates!0 (array!10104 (_ BitVec 32) List!3102) Bool)

(assert (=> b!211983 (= res!103596 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3099))))

(declare-fun mapNonEmpty!9266 () Bool)

(declare-fun tp!19828 () Bool)

(assert (=> mapNonEmpty!9266 (= mapRes!9266 (and tp!19828 e!137957))))

(declare-fun mapValue!9266 () ValueCell!2382)

(declare-fun mapRest!9266 () (Array (_ BitVec 32) ValueCell!2382))

(declare-fun mapKey!9266 () (_ BitVec 32))

(assert (=> mapNonEmpty!9266 (= (arr!4796 _values!649) (store mapRest!9266 mapKey!9266 mapValue!9266))))

(declare-fun b!211984 () Bool)

(declare-fun e!137959 () Bool)

(assert (=> b!211984 (= e!137961 (not e!137959))))

(declare-fun res!103597 () Bool)

(assert (=> b!211984 (=> res!103597 e!137959)))

(assert (=> b!211984 (= res!103597 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!109188 () ListLongMap!3113)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6915)

(declare-fun getCurrentListMap!1100 (array!10104 array!10106 (_ BitVec 32) (_ BitVec 32) V!6915 V!6915 (_ BitVec 32) Int) ListLongMap!3113)

(assert (=> b!211984 (= lt!109188 (getCurrentListMap!1100 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109182 () ListLongMap!3113)

(declare-fun lt!109191 () array!10106)

(assert (=> b!211984 (= lt!109182 (getCurrentListMap!1100 _keys!825 lt!109191 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109187 () ListLongMap!3113)

(declare-fun lt!109192 () ListLongMap!3113)

(assert (=> b!211984 (and (= lt!109187 lt!109192) (= lt!109192 lt!109187))))

(assert (=> b!211984 (= lt!109192 (+!565 lt!109189 lt!109184))))

(assert (=> b!211984 (= lt!109184 (tuple2!4187 k0!843 v!520))))

(declare-fun lt!109186 () Unit!6431)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!217 (array!10104 array!10106 (_ BitVec 32) (_ BitVec 32) V!6915 V!6915 (_ BitVec 32) (_ BitVec 64) V!6915 (_ BitVec 32) Int) Unit!6431)

(assert (=> b!211984 (= lt!109186 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!217 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!499 (array!10104 array!10106 (_ BitVec 32) (_ BitVec 32) V!6915 V!6915 (_ BitVec 32) Int) ListLongMap!3113)

(assert (=> b!211984 (= lt!109187 (getCurrentListMapNoExtraKeys!499 _keys!825 lt!109191 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211984 (= lt!109191 (array!10107 (store (arr!4796 _values!649) i!601 (ValueCellFull!2382 v!520)) (size!5121 _values!649)))))

(assert (=> b!211984 (= lt!109189 (getCurrentListMapNoExtraKeys!499 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211985 () Bool)

(assert (=> b!211985 (= e!137959 e!137960)))

(declare-fun res!103602 () Bool)

(assert (=> b!211985 (=> res!103602 e!137960)))

(assert (=> b!211985 (= res!103602 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!211985 (= lt!109182 lt!109190)))

(declare-fun lt!109185 () tuple2!4186)

(assert (=> b!211985 (= lt!109190 (+!565 lt!109192 lt!109185))))

(assert (=> b!211985 (= lt!109188 lt!109181)))

(assert (=> b!211985 (= lt!109181 (+!565 lt!109189 lt!109185))))

(assert (=> b!211985 (= lt!109182 (+!565 lt!109187 lt!109185))))

(assert (=> b!211985 (= lt!109185 (tuple2!4187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211986 () Bool)

(assert (=> b!211986 (= e!137958 tp_is_empty!5451)))

(assert (= (and start!21090 res!103599) b!211981))

(assert (= (and b!211981 res!103601) b!211978))

(assert (= (and b!211978 res!103598) b!211983))

(assert (= (and b!211983 res!103596) b!211975))

(assert (= (and b!211975 res!103600) b!211977))

(assert (= (and b!211977 res!103603) b!211982))

(assert (= (and b!211982 res!103595) b!211984))

(assert (= (and b!211984 (not res!103597)) b!211985))

(assert (= (and b!211985 (not res!103602)) b!211976))

(assert (= (and b!211979 condMapEmpty!9266) mapIsEmpty!9266))

(assert (= (and b!211979 (not condMapEmpty!9266)) mapNonEmpty!9266))

(get-info :version)

(assert (= (and mapNonEmpty!9266 ((_ is ValueCellFull!2382) mapValue!9266)) b!211980))

(assert (= (and b!211979 ((_ is ValueCellFull!2382) mapDefault!9266)) b!211986))

(assert (= start!21090 b!211979))

(declare-fun m!239769 () Bool)

(assert (=> start!21090 m!239769))

(declare-fun m!239771 () Bool)

(assert (=> start!21090 m!239771))

(declare-fun m!239773 () Bool)

(assert (=> start!21090 m!239773))

(declare-fun m!239775 () Bool)

(assert (=> b!211983 m!239775))

(declare-fun m!239777 () Bool)

(assert (=> mapNonEmpty!9266 m!239777))

(declare-fun m!239779 () Bool)

(assert (=> b!211985 m!239779))

(declare-fun m!239781 () Bool)

(assert (=> b!211985 m!239781))

(declare-fun m!239783 () Bool)

(assert (=> b!211985 m!239783))

(declare-fun m!239785 () Bool)

(assert (=> b!211982 m!239785))

(declare-fun m!239787 () Bool)

(assert (=> b!211976 m!239787))

(declare-fun m!239789 () Bool)

(assert (=> b!211976 m!239789))

(declare-fun m!239791 () Bool)

(assert (=> b!211977 m!239791))

(declare-fun m!239793 () Bool)

(assert (=> b!211978 m!239793))

(declare-fun m!239795 () Bool)

(assert (=> b!211984 m!239795))

(declare-fun m!239797 () Bool)

(assert (=> b!211984 m!239797))

(declare-fun m!239799 () Bool)

(assert (=> b!211984 m!239799))

(declare-fun m!239801 () Bool)

(assert (=> b!211984 m!239801))

(declare-fun m!239803 () Bool)

(assert (=> b!211984 m!239803))

(declare-fun m!239805 () Bool)

(assert (=> b!211984 m!239805))

(declare-fun m!239807 () Bool)

(assert (=> b!211984 m!239807))

(check-sat (not b!211984) (not b!211976) (not b!211983) (not b!211977) (not b!211985) (not b!211978) tp_is_empty!5451 b_and!12437 (not b_next!5589) (not mapNonEmpty!9266) (not start!21090))
(check-sat b_and!12437 (not b_next!5589))
