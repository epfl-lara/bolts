; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39548 () Bool)

(assert start!39548)

(declare-fun b_free!9807 () Bool)

(declare-fun b_next!9807 () Bool)

(assert (=> start!39548 (= b_free!9807 (not b_next!9807))))

(declare-fun tp!34950 () Bool)

(declare-fun b_and!17481 () Bool)

(assert (=> start!39548 (= tp!34950 b_and!17481)))

(declare-fun b!422709 () Bool)

(declare-fun res!247006 () Bool)

(declare-fun e!251415 () Bool)

(assert (=> b!422709 (=> (not res!247006) (not e!251415))))

(declare-datatypes ((array!25745 0))(
  ( (array!25746 (arr!12319 (Array (_ BitVec 32) (_ BitVec 64))) (size!12671 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25745)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422709 (= res!247006 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422710 () Bool)

(declare-fun e!251416 () Bool)

(assert (=> b!422710 (= e!251416 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15717 0))(
  ( (V!15718 (val!5524 Int)) )
))
(declare-fun minValue!515 () V!15717)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5136 0))(
  ( (ValueCellFull!5136 (v!7767 V!15717)) (EmptyCell!5136) )
))
(declare-datatypes ((array!25747 0))(
  ( (array!25748 (arr!12320 (Array (_ BitVec 32) ValueCell!5136)) (size!12672 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25747)

(declare-fun zeroValue!515 () V!15717)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!194025 () array!25745)

(declare-datatypes ((tuple2!7180 0))(
  ( (tuple2!7181 (_1!3600 (_ BitVec 64)) (_2!3600 V!15717)) )
))
(declare-datatypes ((List!7225 0))(
  ( (Nil!7222) (Cons!7221 (h!8077 tuple2!7180) (t!12677 List!7225)) )
))
(declare-datatypes ((ListLongMap!6107 0))(
  ( (ListLongMap!6108 (toList!3069 List!7225)) )
))
(declare-fun lt!194024 () ListLongMap!6107)

(declare-fun v!412 () V!15717)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1270 (array!25745 array!25747 (_ BitVec 32) (_ BitVec 32) V!15717 V!15717 (_ BitVec 32) Int) ListLongMap!6107)

(assert (=> b!422710 (= lt!194024 (getCurrentListMapNoExtraKeys!1270 lt!194025 (array!25748 (store (arr!12320 _values!549) i!563 (ValueCellFull!5136 v!412)) (size!12672 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194023 () ListLongMap!6107)

(assert (=> b!422710 (= lt!194023 (getCurrentListMapNoExtraKeys!1270 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422711 () Bool)

(declare-fun res!247004 () Bool)

(assert (=> b!422711 (=> (not res!247004) (not e!251415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422711 (= res!247004 (validKeyInArray!0 k0!794))))

(declare-fun b!422712 () Bool)

(assert (=> b!422712 (= e!251415 e!251416)))

(declare-fun res!247011 () Bool)

(assert (=> b!422712 (=> (not res!247011) (not e!251416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25745 (_ BitVec 32)) Bool)

(assert (=> b!422712 (= res!247011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194025 mask!1025))))

(assert (=> b!422712 (= lt!194025 (array!25746 (store (arr!12319 _keys!709) i!563 k0!794) (size!12671 _keys!709)))))

(declare-fun b!422713 () Bool)

(declare-fun res!247010 () Bool)

(assert (=> b!422713 (=> (not res!247010) (not e!251415))))

(declare-datatypes ((List!7226 0))(
  ( (Nil!7223) (Cons!7222 (h!8078 (_ BitVec 64)) (t!12678 List!7226)) )
))
(declare-fun arrayNoDuplicates!0 (array!25745 (_ BitVec 32) List!7226) Bool)

(assert (=> b!422713 (= res!247010 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7223))))

(declare-fun b!422714 () Bool)

(declare-fun res!247009 () Bool)

(assert (=> b!422714 (=> (not res!247009) (not e!251416))))

(assert (=> b!422714 (= res!247009 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18060 () Bool)

(declare-fun mapRes!18060 () Bool)

(declare-fun tp!34949 () Bool)

(declare-fun e!251414 () Bool)

(assert (=> mapNonEmpty!18060 (= mapRes!18060 (and tp!34949 e!251414))))

(declare-fun mapRest!18060 () (Array (_ BitVec 32) ValueCell!5136))

(declare-fun mapValue!18060 () ValueCell!5136)

(declare-fun mapKey!18060 () (_ BitVec 32))

(assert (=> mapNonEmpty!18060 (= (arr!12320 _values!549) (store mapRest!18060 mapKey!18060 mapValue!18060))))

(declare-fun b!422715 () Bool)

(declare-fun e!251419 () Bool)

(declare-fun tp_is_empty!10959 () Bool)

(assert (=> b!422715 (= e!251419 tp_is_empty!10959)))

(declare-fun b!422716 () Bool)

(declare-fun res!247005 () Bool)

(assert (=> b!422716 (=> (not res!247005) (not e!251415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422716 (= res!247005 (validMask!0 mask!1025))))

(declare-fun b!422717 () Bool)

(declare-fun res!247007 () Bool)

(assert (=> b!422717 (=> (not res!247007) (not e!251415))))

(assert (=> b!422717 (= res!247007 (or (= (select (arr!12319 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12319 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!247013 () Bool)

(assert (=> start!39548 (=> (not res!247013) (not e!251415))))

(assert (=> start!39548 (= res!247013 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12671 _keys!709))))))

(assert (=> start!39548 e!251415))

(assert (=> start!39548 tp_is_empty!10959))

(assert (=> start!39548 tp!34950))

(assert (=> start!39548 true))

(declare-fun e!251418 () Bool)

(declare-fun array_inv!8976 (array!25747) Bool)

(assert (=> start!39548 (and (array_inv!8976 _values!549) e!251418)))

(declare-fun array_inv!8977 (array!25745) Bool)

(assert (=> start!39548 (array_inv!8977 _keys!709)))

(declare-fun b!422718 () Bool)

(declare-fun res!247003 () Bool)

(assert (=> b!422718 (=> (not res!247003) (not e!251415))))

(assert (=> b!422718 (= res!247003 (and (= (size!12672 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12671 _keys!709) (size!12672 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422719 () Bool)

(declare-fun res!247008 () Bool)

(assert (=> b!422719 (=> (not res!247008) (not e!251415))))

(assert (=> b!422719 (= res!247008 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12671 _keys!709))))))

(declare-fun mapIsEmpty!18060 () Bool)

(assert (=> mapIsEmpty!18060 mapRes!18060))

(declare-fun b!422720 () Bool)

(assert (=> b!422720 (= e!251418 (and e!251419 mapRes!18060))))

(declare-fun condMapEmpty!18060 () Bool)

(declare-fun mapDefault!18060 () ValueCell!5136)

(assert (=> b!422720 (= condMapEmpty!18060 (= (arr!12320 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5136)) mapDefault!18060)))))

(declare-fun b!422721 () Bool)

(assert (=> b!422721 (= e!251414 tp_is_empty!10959)))

(declare-fun b!422722 () Bool)

(declare-fun res!247012 () Bool)

(assert (=> b!422722 (=> (not res!247012) (not e!251416))))

(assert (=> b!422722 (= res!247012 (arrayNoDuplicates!0 lt!194025 #b00000000000000000000000000000000 Nil!7223))))

(declare-fun b!422723 () Bool)

(declare-fun res!247014 () Bool)

(assert (=> b!422723 (=> (not res!247014) (not e!251415))))

(assert (=> b!422723 (= res!247014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39548 res!247013) b!422716))

(assert (= (and b!422716 res!247005) b!422718))

(assert (= (and b!422718 res!247003) b!422723))

(assert (= (and b!422723 res!247014) b!422713))

(assert (= (and b!422713 res!247010) b!422719))

(assert (= (and b!422719 res!247008) b!422711))

(assert (= (and b!422711 res!247004) b!422717))

(assert (= (and b!422717 res!247007) b!422709))

(assert (= (and b!422709 res!247006) b!422712))

(assert (= (and b!422712 res!247011) b!422722))

(assert (= (and b!422722 res!247012) b!422714))

(assert (= (and b!422714 res!247009) b!422710))

(assert (= (and b!422720 condMapEmpty!18060) mapIsEmpty!18060))

(assert (= (and b!422720 (not condMapEmpty!18060)) mapNonEmpty!18060))

(get-info :version)

(assert (= (and mapNonEmpty!18060 ((_ is ValueCellFull!5136) mapValue!18060)) b!422721))

(assert (= (and b!422720 ((_ is ValueCellFull!5136) mapDefault!18060)) b!422715))

(assert (= start!39548 b!422720))

(declare-fun m!412405 () Bool)

(assert (=> b!422710 m!412405))

(declare-fun m!412407 () Bool)

(assert (=> b!422710 m!412407))

(declare-fun m!412409 () Bool)

(assert (=> b!422710 m!412409))

(declare-fun m!412411 () Bool)

(assert (=> b!422709 m!412411))

(declare-fun m!412413 () Bool)

(assert (=> b!422717 m!412413))

(declare-fun m!412415 () Bool)

(assert (=> b!422722 m!412415))

(declare-fun m!412417 () Bool)

(assert (=> start!39548 m!412417))

(declare-fun m!412419 () Bool)

(assert (=> start!39548 m!412419))

(declare-fun m!412421 () Bool)

(assert (=> b!422723 m!412421))

(declare-fun m!412423 () Bool)

(assert (=> mapNonEmpty!18060 m!412423))

(declare-fun m!412425 () Bool)

(assert (=> b!422713 m!412425))

(declare-fun m!412427 () Bool)

(assert (=> b!422716 m!412427))

(declare-fun m!412429 () Bool)

(assert (=> b!422711 m!412429))

(declare-fun m!412431 () Bool)

(assert (=> b!422712 m!412431))

(declare-fun m!412433 () Bool)

(assert (=> b!422712 m!412433))

(check-sat (not b!422711) (not start!39548) (not b!422713) (not b!422723) (not mapNonEmpty!18060) (not b!422710) (not b!422712) (not b!422709) (not b!422722) b_and!17481 tp_is_empty!10959 (not b_next!9807) (not b!422716))
(check-sat b_and!17481 (not b_next!9807))
