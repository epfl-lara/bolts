; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20852 () Bool)

(assert start!20852)

(declare-fun b_free!5493 () Bool)

(declare-fun b_next!5493 () Bool)

(assert (=> start!20852 (= b_free!5493 (not b_next!5493))))

(declare-fun tp!19519 () Bool)

(declare-fun b_and!12257 () Bool)

(assert (=> start!20852 (= tp!19519 b_and!12257)))

(declare-fun b!209016 () Bool)

(declare-fun e!136238 () Bool)

(declare-fun e!136237 () Bool)

(declare-fun mapRes!9101 () Bool)

(assert (=> b!209016 (= e!136238 (and e!136237 mapRes!9101))))

(declare-fun condMapEmpty!9101 () Bool)

(declare-datatypes ((V!6787 0))(
  ( (V!6788 (val!2722 Int)) )
))
(declare-datatypes ((ValueCell!2334 0))(
  ( (ValueCellFull!2334 (v!4688 V!6787)) (EmptyCell!2334) )
))
(declare-datatypes ((array!9910 0))(
  ( (array!9911 (arr!4705 (Array (_ BitVec 32) ValueCell!2334)) (size!5030 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9910)

(declare-fun mapDefault!9101 () ValueCell!2334)

(assert (=> b!209016 (= condMapEmpty!9101 (= (arr!4705 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2334)) mapDefault!9101)))))

(declare-fun res!101829 () Bool)

(declare-fun e!136236 () Bool)

(assert (=> start!20852 (=> (not res!101829) (not e!136236))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20852 (= res!101829 (validMask!0 mask!1149))))

(assert (=> start!20852 e!136236))

(declare-fun array_inv!3109 (array!9910) Bool)

(assert (=> start!20852 (and (array_inv!3109 _values!649) e!136238)))

(assert (=> start!20852 true))

(declare-fun tp_is_empty!5355 () Bool)

(assert (=> start!20852 tp_is_empty!5355))

(declare-datatypes ((array!9912 0))(
  ( (array!9913 (arr!4706 (Array (_ BitVec 32) (_ BitVec 64))) (size!5031 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9912)

(declare-fun array_inv!3110 (array!9912) Bool)

(assert (=> start!20852 (array_inv!3110 _keys!825)))

(assert (=> start!20852 tp!19519))

(declare-fun b!209017 () Bool)

(assert (=> b!209017 (= e!136237 tp_is_empty!5355)))

(declare-fun mapIsEmpty!9101 () Bool)

(assert (=> mapIsEmpty!9101 mapRes!9101))

(declare-fun b!209018 () Bool)

(declare-fun res!101824 () Bool)

(assert (=> b!209018 (=> (not res!101824) (not e!136236))))

(declare-datatypes ((List!3032 0))(
  ( (Nil!3029) (Cons!3028 (h!3670 (_ BitVec 64)) (t!7971 List!3032)) )
))
(declare-fun arrayNoDuplicates!0 (array!9912 (_ BitVec 32) List!3032) Bool)

(assert (=> b!209018 (= res!101824 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3029))))

(declare-fun mapNonEmpty!9101 () Bool)

(declare-fun tp!19520 () Bool)

(declare-fun e!136240 () Bool)

(assert (=> mapNonEmpty!9101 (= mapRes!9101 (and tp!19520 e!136240))))

(declare-fun mapValue!9101 () ValueCell!2334)

(declare-fun mapKey!9101 () (_ BitVec 32))

(declare-fun mapRest!9101 () (Array (_ BitVec 32) ValueCell!2334))

(assert (=> mapNonEmpty!9101 (= (arr!4705 _values!649) (store mapRest!9101 mapKey!9101 mapValue!9101))))

(declare-fun b!209019 () Bool)

(declare-fun res!101825 () Bool)

(assert (=> b!209019 (=> (not res!101825) (not e!136236))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209019 (= res!101825 (validKeyInArray!0 k0!843))))

(declare-fun b!209020 () Bool)

(declare-fun res!101830 () Bool)

(assert (=> b!209020 (=> (not res!101830) (not e!136236))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209020 (= res!101830 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5031 _keys!825))))))

(declare-fun b!209021 () Bool)

(declare-fun res!101828 () Bool)

(assert (=> b!209021 (=> (not res!101828) (not e!136236))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209021 (= res!101828 (and (= (size!5030 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5031 _keys!825) (size!5030 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209022 () Bool)

(declare-fun res!101826 () Bool)

(assert (=> b!209022 (=> (not res!101826) (not e!136236))))

(assert (=> b!209022 (= res!101826 (= (select (arr!4706 _keys!825) i!601) k0!843))))

(declare-fun b!209023 () Bool)

(assert (=> b!209023 (= e!136236 false)))

(declare-fun v!520 () V!6787)

(declare-fun zeroValue!615 () V!6787)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!4112 0))(
  ( (tuple2!4113 (_1!2066 (_ BitVec 64)) (_2!2066 V!6787)) )
))
(declare-datatypes ((List!3033 0))(
  ( (Nil!3030) (Cons!3029 (h!3671 tuple2!4112) (t!7972 List!3033)) )
))
(declare-datatypes ((ListLongMap!3039 0))(
  ( (ListLongMap!3040 (toList!1535 List!3033)) )
))
(declare-fun lt!106933 () ListLongMap!3039)

(declare-fun minValue!615 () V!6787)

(declare-fun getCurrentListMapNoExtraKeys!468 (array!9912 array!9910 (_ BitVec 32) (_ BitVec 32) V!6787 V!6787 (_ BitVec 32) Int) ListLongMap!3039)

(assert (=> b!209023 (= lt!106933 (getCurrentListMapNoExtraKeys!468 _keys!825 (array!9911 (store (arr!4705 _values!649) i!601 (ValueCellFull!2334 v!520)) (size!5030 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106932 () ListLongMap!3039)

(assert (=> b!209023 (= lt!106932 (getCurrentListMapNoExtraKeys!468 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209024 () Bool)

(declare-fun res!101827 () Bool)

(assert (=> b!209024 (=> (not res!101827) (not e!136236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9912 (_ BitVec 32)) Bool)

(assert (=> b!209024 (= res!101827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!209025 () Bool)

(assert (=> b!209025 (= e!136240 tp_is_empty!5355)))

(assert (= (and start!20852 res!101829) b!209021))

(assert (= (and b!209021 res!101828) b!209024))

(assert (= (and b!209024 res!101827) b!209018))

(assert (= (and b!209018 res!101824) b!209020))

(assert (= (and b!209020 res!101830) b!209019))

(assert (= (and b!209019 res!101825) b!209022))

(assert (= (and b!209022 res!101826) b!209023))

(assert (= (and b!209016 condMapEmpty!9101) mapIsEmpty!9101))

(assert (= (and b!209016 (not condMapEmpty!9101)) mapNonEmpty!9101))

(get-info :version)

(assert (= (and mapNonEmpty!9101 ((_ is ValueCellFull!2334) mapValue!9101)) b!209025))

(assert (= (and b!209016 ((_ is ValueCellFull!2334) mapDefault!9101)) b!209017))

(assert (= start!20852 b!209016))

(declare-fun m!236503 () Bool)

(assert (=> b!209022 m!236503))

(declare-fun m!236505 () Bool)

(assert (=> b!209019 m!236505))

(declare-fun m!236507 () Bool)

(assert (=> b!209024 m!236507))

(declare-fun m!236509 () Bool)

(assert (=> b!209023 m!236509))

(declare-fun m!236511 () Bool)

(assert (=> b!209023 m!236511))

(declare-fun m!236513 () Bool)

(assert (=> b!209023 m!236513))

(declare-fun m!236515 () Bool)

(assert (=> start!20852 m!236515))

(declare-fun m!236517 () Bool)

(assert (=> start!20852 m!236517))

(declare-fun m!236519 () Bool)

(assert (=> start!20852 m!236519))

(declare-fun m!236521 () Bool)

(assert (=> b!209018 m!236521))

(declare-fun m!236523 () Bool)

(assert (=> mapNonEmpty!9101 m!236523))

(check-sat (not b!209023) (not b!209018) (not mapNonEmpty!9101) (not b_next!5493) (not b!209024) (not b!209019) b_and!12257 tp_is_empty!5355 (not start!20852))
(check-sat b_and!12257 (not b_next!5493))
