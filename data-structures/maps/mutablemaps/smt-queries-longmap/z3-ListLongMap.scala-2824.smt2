; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40918 () Bool)

(assert start!40918)

(declare-fun b_free!10845 () Bool)

(declare-fun b_next!10845 () Bool)

(assert (=> start!40918 (= b_free!10845 (not b_next!10845))))

(declare-fun tp!38362 () Bool)

(declare-fun b_and!19005 () Bool)

(assert (=> start!40918 (= tp!38362 b_and!19005)))

(declare-fun b!454442 () Bool)

(declare-fun e!265853 () Bool)

(declare-fun e!265852 () Bool)

(assert (=> b!454442 (= e!265853 e!265852)))

(declare-fun res!270881 () Bool)

(assert (=> b!454442 (=> (not res!270881) (not e!265852))))

(declare-datatypes ((array!28135 0))(
  ( (array!28136 (arr!13508 (Array (_ BitVec 32) (_ BitVec 64))) (size!13860 (_ BitVec 32))) )
))
(declare-fun lt!206138 () array!28135)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28135 (_ BitVec 32)) Bool)

(assert (=> b!454442 (= res!270881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206138 mask!1025))))

(declare-fun _keys!709 () array!28135)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454442 (= lt!206138 (array!28136 (store (arr!13508 _keys!709) i!563 k0!794) (size!13860 _keys!709)))))

(declare-fun b!454443 () Bool)

(declare-fun res!270887 () Bool)

(assert (=> b!454443 (=> (not res!270887) (not e!265852))))

(declare-datatypes ((List!8134 0))(
  ( (Nil!8131) (Cons!8130 (h!8986 (_ BitVec 64)) (t!13970 List!8134)) )
))
(declare-fun arrayNoDuplicates!0 (array!28135 (_ BitVec 32) List!8134) Bool)

(assert (=> b!454443 (= res!270887 (arrayNoDuplicates!0 lt!206138 #b00000000000000000000000000000000 Nil!8131))))

(declare-fun b!454444 () Bool)

(declare-fun res!270880 () Bool)

(assert (=> b!454444 (=> (not res!270880) (not e!265853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454444 (= res!270880 (validMask!0 mask!1025))))

(declare-fun b!454445 () Bool)

(declare-fun res!270889 () Bool)

(assert (=> b!454445 (=> (not res!270889) (not e!265853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454445 (= res!270889 (validKeyInArray!0 k0!794))))

(declare-fun b!454446 () Bool)

(declare-fun res!270882 () Bool)

(assert (=> b!454446 (=> (not res!270882) (not e!265853))))

(assert (=> b!454446 (= res!270882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19915 () Bool)

(declare-fun mapRes!19915 () Bool)

(declare-fun tp!38361 () Bool)

(declare-fun e!265851 () Bool)

(assert (=> mapNonEmpty!19915 (= mapRes!19915 (and tp!38361 e!265851))))

(declare-datatypes ((V!17349 0))(
  ( (V!17350 (val!6136 Int)) )
))
(declare-datatypes ((ValueCell!5748 0))(
  ( (ValueCellFull!5748 (v!8398 V!17349)) (EmptyCell!5748) )
))
(declare-fun mapValue!19915 () ValueCell!5748)

(declare-fun mapKey!19915 () (_ BitVec 32))

(declare-datatypes ((array!28137 0))(
  ( (array!28138 (arr!13509 (Array (_ BitVec 32) ValueCell!5748)) (size!13861 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28137)

(declare-fun mapRest!19915 () (Array (_ BitVec 32) ValueCell!5748))

(assert (=> mapNonEmpty!19915 (= (arr!13509 _values!549) (store mapRest!19915 mapKey!19915 mapValue!19915))))

(declare-fun b!454447 () Bool)

(declare-fun res!270886 () Bool)

(assert (=> b!454447 (=> (not res!270886) (not e!265853))))

(declare-fun arrayContainsKey!0 (array!28135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454447 (= res!270886 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454448 () Bool)

(declare-fun e!265855 () Bool)

(declare-fun e!265854 () Bool)

(assert (=> b!454448 (= e!265855 (and e!265854 mapRes!19915))))

(declare-fun condMapEmpty!19915 () Bool)

(declare-fun mapDefault!19915 () ValueCell!5748)

(assert (=> b!454448 (= condMapEmpty!19915 (= (arr!13509 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5748)) mapDefault!19915)))))

(declare-fun b!454449 () Bool)

(declare-fun tp_is_empty!12183 () Bool)

(assert (=> b!454449 (= e!265854 tp_is_empty!12183)))

(declare-fun mapIsEmpty!19915 () Bool)

(assert (=> mapIsEmpty!19915 mapRes!19915))

(declare-fun b!454450 () Bool)

(declare-fun res!270888 () Bool)

(assert (=> b!454450 (=> (not res!270888) (not e!265853))))

(assert (=> b!454450 (= res!270888 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8131))))

(declare-fun b!454451 () Bool)

(declare-fun res!270884 () Bool)

(assert (=> b!454451 (=> (not res!270884) (not e!265853))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!454451 (= res!270884 (and (= (size!13861 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13860 _keys!709) (size!13861 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454452 () Bool)

(declare-fun res!270885 () Bool)

(assert (=> b!454452 (=> (not res!270885) (not e!265852))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!454452 (= res!270885 (bvsle from!863 i!563))))

(declare-fun b!454453 () Bool)

(assert (=> b!454453 (= e!265852 false)))

(declare-fun minValue!515 () V!17349)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17349)

(declare-datatypes ((tuple2!8028 0))(
  ( (tuple2!8029 (_1!4024 (_ BitVec 64)) (_2!4024 V!17349)) )
))
(declare-datatypes ((List!8135 0))(
  ( (Nil!8132) (Cons!8131 (h!8987 tuple2!8028) (t!13971 List!8135)) )
))
(declare-datatypes ((ListLongMap!6955 0))(
  ( (ListLongMap!6956 (toList!3493 List!8135)) )
))
(declare-fun lt!206137 () ListLongMap!6955)

(declare-fun v!412 () V!17349)

(declare-fun getCurrentListMapNoExtraKeys!1669 (array!28135 array!28137 (_ BitVec 32) (_ BitVec 32) V!17349 V!17349 (_ BitVec 32) Int) ListLongMap!6955)

(assert (=> b!454453 (= lt!206137 (getCurrentListMapNoExtraKeys!1669 lt!206138 (array!28138 (store (arr!13509 _values!549) i!563 (ValueCellFull!5748 v!412)) (size!13861 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206139 () ListLongMap!6955)

(assert (=> b!454453 (= lt!206139 (getCurrentListMapNoExtraKeys!1669 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454454 () Bool)

(declare-fun res!270879 () Bool)

(assert (=> b!454454 (=> (not res!270879) (not e!265853))))

(assert (=> b!454454 (= res!270879 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13860 _keys!709))))))

(declare-fun b!454455 () Bool)

(declare-fun res!270883 () Bool)

(assert (=> b!454455 (=> (not res!270883) (not e!265853))))

(assert (=> b!454455 (= res!270883 (or (= (select (arr!13508 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13508 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454456 () Bool)

(assert (=> b!454456 (= e!265851 tp_is_empty!12183)))

(declare-fun res!270890 () Bool)

(assert (=> start!40918 (=> (not res!270890) (not e!265853))))

(assert (=> start!40918 (= res!270890 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13860 _keys!709))))))

(assert (=> start!40918 e!265853))

(assert (=> start!40918 tp_is_empty!12183))

(assert (=> start!40918 tp!38362))

(assert (=> start!40918 true))

(declare-fun array_inv!9778 (array!28137) Bool)

(assert (=> start!40918 (and (array_inv!9778 _values!549) e!265855)))

(declare-fun array_inv!9779 (array!28135) Bool)

(assert (=> start!40918 (array_inv!9779 _keys!709)))

(assert (= (and start!40918 res!270890) b!454444))

(assert (= (and b!454444 res!270880) b!454451))

(assert (= (and b!454451 res!270884) b!454446))

(assert (= (and b!454446 res!270882) b!454450))

(assert (= (and b!454450 res!270888) b!454454))

(assert (= (and b!454454 res!270879) b!454445))

(assert (= (and b!454445 res!270889) b!454455))

(assert (= (and b!454455 res!270883) b!454447))

(assert (= (and b!454447 res!270886) b!454442))

(assert (= (and b!454442 res!270881) b!454443))

(assert (= (and b!454443 res!270887) b!454452))

(assert (= (and b!454452 res!270885) b!454453))

(assert (= (and b!454448 condMapEmpty!19915) mapIsEmpty!19915))

(assert (= (and b!454448 (not condMapEmpty!19915)) mapNonEmpty!19915))

(get-info :version)

(assert (= (and mapNonEmpty!19915 ((_ is ValueCellFull!5748) mapValue!19915)) b!454456))

(assert (= (and b!454448 ((_ is ValueCellFull!5748) mapDefault!19915)) b!454449))

(assert (= start!40918 b!454448))

(declare-fun m!438531 () Bool)

(assert (=> b!454443 m!438531))

(declare-fun m!438533 () Bool)

(assert (=> mapNonEmpty!19915 m!438533))

(declare-fun m!438535 () Bool)

(assert (=> b!454453 m!438535))

(declare-fun m!438537 () Bool)

(assert (=> b!454453 m!438537))

(declare-fun m!438539 () Bool)

(assert (=> b!454453 m!438539))

(declare-fun m!438541 () Bool)

(assert (=> b!454442 m!438541))

(declare-fun m!438543 () Bool)

(assert (=> b!454442 m!438543))

(declare-fun m!438545 () Bool)

(assert (=> b!454455 m!438545))

(declare-fun m!438547 () Bool)

(assert (=> b!454445 m!438547))

(declare-fun m!438549 () Bool)

(assert (=> b!454446 m!438549))

(declare-fun m!438551 () Bool)

(assert (=> b!454447 m!438551))

(declare-fun m!438553 () Bool)

(assert (=> b!454444 m!438553))

(declare-fun m!438555 () Bool)

(assert (=> b!454450 m!438555))

(declare-fun m!438557 () Bool)

(assert (=> start!40918 m!438557))

(declare-fun m!438559 () Bool)

(assert (=> start!40918 m!438559))

(check-sat (not start!40918) (not b!454442) b_and!19005 (not b!454450) (not b!454443) (not b!454444) (not b!454446) (not b!454447) (not b_next!10845) tp_is_empty!12183 (not b!454445) (not mapNonEmpty!19915) (not b!454453))
(check-sat b_and!19005 (not b_next!10845))
