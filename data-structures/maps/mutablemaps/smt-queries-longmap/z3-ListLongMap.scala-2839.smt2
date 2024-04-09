; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41008 () Bool)

(assert start!41008)

(declare-fun b_free!10935 () Bool)

(declare-fun b_next!10935 () Bool)

(assert (=> start!41008 (= b_free!10935 (not b_next!10935))))

(declare-fun tp!38632 () Bool)

(declare-fun b_and!19095 () Bool)

(assert (=> start!41008 (= tp!38632 b_and!19095)))

(declare-fun b!456495 () Bool)

(declare-fun e!266690 () Bool)

(declare-fun e!266692 () Bool)

(assert (=> b!456495 (= e!266690 e!266692)))

(declare-fun res!272533 () Bool)

(assert (=> b!456495 (=> (not res!272533) (not e!266692))))

(declare-datatypes ((array!28313 0))(
  ( (array!28314 (arr!13597 (Array (_ BitVec 32) (_ BitVec 64))) (size!13949 (_ BitVec 32))) )
))
(declare-fun lt!206588 () array!28313)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28313 (_ BitVec 32)) Bool)

(assert (=> b!456495 (= res!272533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206588 mask!1025))))

(declare-fun _keys!709 () array!28313)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456495 (= lt!206588 (array!28314 (store (arr!13597 _keys!709) i!563 k0!794) (size!13949 _keys!709)))))

(declare-fun b!456496 () Bool)

(declare-fun e!266689 () Bool)

(declare-fun e!266693 () Bool)

(assert (=> b!456496 (= e!266689 (not e!266693))))

(declare-fun res!272540 () Bool)

(assert (=> b!456496 (=> res!272540 e!266693)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456496 (= res!272540 (not (validKeyInArray!0 (select (arr!13597 _keys!709) from!863))))))

(declare-datatypes ((V!17469 0))(
  ( (V!17470 (val!6181 Int)) )
))
(declare-fun minValue!515 () V!17469)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5793 0))(
  ( (ValueCellFull!5793 (v!8443 V!17469)) (EmptyCell!5793) )
))
(declare-datatypes ((array!28315 0))(
  ( (array!28316 (arr!13598 (Array (_ BitVec 32) ValueCell!5793)) (size!13950 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28315)

(declare-fun zeroValue!515 () V!17469)

(declare-fun lt!206589 () array!28315)

(declare-fun v!412 () V!17469)

(declare-datatypes ((tuple2!8102 0))(
  ( (tuple2!8103 (_1!4061 (_ BitVec 64)) (_2!4061 V!17469)) )
))
(declare-datatypes ((List!8208 0))(
  ( (Nil!8205) (Cons!8204 (h!9060 tuple2!8102) (t!14044 List!8208)) )
))
(declare-datatypes ((ListLongMap!7029 0))(
  ( (ListLongMap!7030 (toList!3530 List!8208)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1706 (array!28313 array!28315 (_ BitVec 32) (_ BitVec 32) V!17469 V!17469 (_ BitVec 32) Int) ListLongMap!7029)

(declare-fun +!1552 (ListLongMap!7029 tuple2!8102) ListLongMap!7029)

(assert (=> b!456496 (= (getCurrentListMapNoExtraKeys!1706 lt!206588 lt!206589 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1552 (getCurrentListMapNoExtraKeys!1706 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8103 k0!794 v!412)))))

(declare-datatypes ((Unit!13229 0))(
  ( (Unit!13230) )
))
(declare-fun lt!206592 () Unit!13229)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!717 (array!28313 array!28315 (_ BitVec 32) (_ BitVec 32) V!17469 V!17469 (_ BitVec 32) (_ BitVec 64) V!17469 (_ BitVec 32) Int) Unit!13229)

(assert (=> b!456496 (= lt!206592 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!717 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456497 () Bool)

(declare-fun res!272537 () Bool)

(assert (=> b!456497 (=> (not res!272537) (not e!266690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456497 (= res!272537 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20050 () Bool)

(declare-fun mapRes!20050 () Bool)

(declare-fun tp!38631 () Bool)

(declare-fun e!266696 () Bool)

(assert (=> mapNonEmpty!20050 (= mapRes!20050 (and tp!38631 e!266696))))

(declare-fun mapRest!20050 () (Array (_ BitVec 32) ValueCell!5793))

(declare-fun mapValue!20050 () ValueCell!5793)

(declare-fun mapKey!20050 () (_ BitVec 32))

(assert (=> mapNonEmpty!20050 (= (arr!13598 _values!549) (store mapRest!20050 mapKey!20050 mapValue!20050))))

(declare-fun b!456498 () Bool)

(declare-fun res!272535 () Bool)

(assert (=> b!456498 (=> (not res!272535) (not e!266690))))

(assert (=> b!456498 (= res!272535 (or (= (select (arr!13597 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13597 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456499 () Bool)

(declare-fun res!272529 () Bool)

(assert (=> b!456499 (=> (not res!272529) (not e!266690))))

(assert (=> b!456499 (= res!272529 (validKeyInArray!0 k0!794))))

(declare-fun b!456500 () Bool)

(declare-fun res!272532 () Bool)

(assert (=> b!456500 (=> (not res!272532) (not e!266690))))

(declare-fun arrayContainsKey!0 (array!28313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456500 (= res!272532 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20050 () Bool)

(assert (=> mapIsEmpty!20050 mapRes!20050))

(declare-fun b!456501 () Bool)

(declare-fun e!266694 () Bool)

(declare-fun tp_is_empty!12273 () Bool)

(assert (=> b!456501 (= e!266694 tp_is_empty!12273)))

(declare-fun res!272536 () Bool)

(assert (=> start!41008 (=> (not res!272536) (not e!266690))))

(assert (=> start!41008 (= res!272536 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13949 _keys!709))))))

(assert (=> start!41008 e!266690))

(assert (=> start!41008 tp_is_empty!12273))

(assert (=> start!41008 tp!38632))

(assert (=> start!41008 true))

(declare-fun e!266695 () Bool)

(declare-fun array_inv!9838 (array!28315) Bool)

(assert (=> start!41008 (and (array_inv!9838 _values!549) e!266695)))

(declare-fun array_inv!9839 (array!28313) Bool)

(assert (=> start!41008 (array_inv!9839 _keys!709)))

(declare-fun b!456502 () Bool)

(declare-fun res!272527 () Bool)

(assert (=> b!456502 (=> (not res!272527) (not e!266692))))

(declare-datatypes ((List!8209 0))(
  ( (Nil!8206) (Cons!8205 (h!9061 (_ BitVec 64)) (t!14045 List!8209)) )
))
(declare-fun arrayNoDuplicates!0 (array!28313 (_ BitVec 32) List!8209) Bool)

(assert (=> b!456502 (= res!272527 (arrayNoDuplicates!0 lt!206588 #b00000000000000000000000000000000 Nil!8206))))

(declare-fun b!456503 () Bool)

(declare-fun res!272534 () Bool)

(assert (=> b!456503 (=> (not res!272534) (not e!266690))))

(assert (=> b!456503 (= res!272534 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13949 _keys!709))))))

(declare-fun b!456504 () Bool)

(declare-fun res!272531 () Bool)

(assert (=> b!456504 (=> (not res!272531) (not e!266692))))

(assert (=> b!456504 (= res!272531 (bvsle from!863 i!563))))

(declare-fun b!456505 () Bool)

(declare-fun res!272539 () Bool)

(assert (=> b!456505 (=> (not res!272539) (not e!266690))))

(assert (=> b!456505 (= res!272539 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8206))))

(declare-fun b!456506 () Bool)

(assert (=> b!456506 (= e!266693 (bvslt i!563 (size!13950 _values!549)))))

(declare-fun b!456507 () Bool)

(declare-fun res!272528 () Bool)

(assert (=> b!456507 (=> (not res!272528) (not e!266690))))

(assert (=> b!456507 (= res!272528 (and (= (size!13950 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13949 _keys!709) (size!13950 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456508 () Bool)

(assert (=> b!456508 (= e!266696 tp_is_empty!12273)))

(declare-fun b!456509 () Bool)

(assert (=> b!456509 (= e!266692 e!266689)))

(declare-fun res!272530 () Bool)

(assert (=> b!456509 (=> (not res!272530) (not e!266689))))

(assert (=> b!456509 (= res!272530 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206591 () ListLongMap!7029)

(assert (=> b!456509 (= lt!206591 (getCurrentListMapNoExtraKeys!1706 lt!206588 lt!206589 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!456509 (= lt!206589 (array!28316 (store (arr!13598 _values!549) i!563 (ValueCellFull!5793 v!412)) (size!13950 _values!549)))))

(declare-fun lt!206590 () ListLongMap!7029)

(assert (=> b!456509 (= lt!206590 (getCurrentListMapNoExtraKeys!1706 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456510 () Bool)

(assert (=> b!456510 (= e!266695 (and e!266694 mapRes!20050))))

(declare-fun condMapEmpty!20050 () Bool)

(declare-fun mapDefault!20050 () ValueCell!5793)

(assert (=> b!456510 (= condMapEmpty!20050 (= (arr!13598 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5793)) mapDefault!20050)))))

(declare-fun b!456511 () Bool)

(declare-fun res!272538 () Bool)

(assert (=> b!456511 (=> (not res!272538) (not e!266690))))

(assert (=> b!456511 (= res!272538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!41008 res!272536) b!456497))

(assert (= (and b!456497 res!272537) b!456507))

(assert (= (and b!456507 res!272528) b!456511))

(assert (= (and b!456511 res!272538) b!456505))

(assert (= (and b!456505 res!272539) b!456503))

(assert (= (and b!456503 res!272534) b!456499))

(assert (= (and b!456499 res!272529) b!456498))

(assert (= (and b!456498 res!272535) b!456500))

(assert (= (and b!456500 res!272532) b!456495))

(assert (= (and b!456495 res!272533) b!456502))

(assert (= (and b!456502 res!272527) b!456504))

(assert (= (and b!456504 res!272531) b!456509))

(assert (= (and b!456509 res!272530) b!456496))

(assert (= (and b!456496 (not res!272540)) b!456506))

(assert (= (and b!456510 condMapEmpty!20050) mapIsEmpty!20050))

(assert (= (and b!456510 (not condMapEmpty!20050)) mapNonEmpty!20050))

(get-info :version)

(assert (= (and mapNonEmpty!20050 ((_ is ValueCellFull!5793) mapValue!20050)) b!456508))

(assert (= (and b!456510 ((_ is ValueCellFull!5793) mapDefault!20050)) b!456501))

(assert (= start!41008 b!456510))

(declare-fun m!439941 () Bool)

(assert (=> mapNonEmpty!20050 m!439941))

(declare-fun m!439943 () Bool)

(assert (=> b!456500 m!439943))

(declare-fun m!439945 () Bool)

(assert (=> b!456509 m!439945))

(declare-fun m!439947 () Bool)

(assert (=> b!456509 m!439947))

(declare-fun m!439949 () Bool)

(assert (=> b!456509 m!439949))

(declare-fun m!439951 () Bool)

(assert (=> b!456497 m!439951))

(declare-fun m!439953 () Bool)

(assert (=> b!456496 m!439953))

(declare-fun m!439955 () Bool)

(assert (=> b!456496 m!439955))

(declare-fun m!439957 () Bool)

(assert (=> b!456496 m!439957))

(assert (=> b!456496 m!439957))

(declare-fun m!439959 () Bool)

(assert (=> b!456496 m!439959))

(assert (=> b!456496 m!439953))

(declare-fun m!439961 () Bool)

(assert (=> b!456496 m!439961))

(declare-fun m!439963 () Bool)

(assert (=> b!456496 m!439963))

(declare-fun m!439965 () Bool)

(assert (=> b!456495 m!439965))

(declare-fun m!439967 () Bool)

(assert (=> b!456495 m!439967))

(declare-fun m!439969 () Bool)

(assert (=> b!456499 m!439969))

(declare-fun m!439971 () Bool)

(assert (=> b!456511 m!439971))

(declare-fun m!439973 () Bool)

(assert (=> start!41008 m!439973))

(declare-fun m!439975 () Bool)

(assert (=> start!41008 m!439975))

(declare-fun m!439977 () Bool)

(assert (=> b!456505 m!439977))

(declare-fun m!439979 () Bool)

(assert (=> b!456498 m!439979))

(declare-fun m!439981 () Bool)

(assert (=> b!456502 m!439981))

(check-sat (not b!456509) (not b!456496) (not b!456497) (not b!456499) (not b!456500) (not start!41008) (not mapNonEmpty!20050) (not b!456502) b_and!19095 (not b!456505) (not b!456511) tp_is_empty!12273 (not b_next!10935) (not b!456495))
(check-sat b_and!19095 (not b_next!10935))
