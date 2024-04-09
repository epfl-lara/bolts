; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40692 () Bool)

(assert start!40692)

(declare-fun b_free!10695 () Bool)

(declare-fun b_next!10695 () Bool)

(assert (=> start!40692 (= b_free!10695 (not b_next!10695))))

(declare-fun tp!37905 () Bool)

(declare-fun b_and!18721 () Bool)

(assert (=> start!40692 (= tp!37905 b_and!18721)))

(declare-fun b!449612 () Bool)

(declare-fun res!267587 () Bool)

(declare-fun e!263568 () Bool)

(assert (=> b!449612 (=> (not res!267587) (not e!263568))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449612 (= res!267587 (validMask!0 mask!1025))))

(declare-fun b!449613 () Bool)

(declare-fun res!267589 () Bool)

(assert (=> b!449613 (=> (not res!267589) (not e!263568))))

(declare-datatypes ((array!27833 0))(
  ( (array!27834 (arr!13359 (Array (_ BitVec 32) (_ BitVec 64))) (size!13711 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27833)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27833 (_ BitVec 32)) Bool)

(assert (=> b!449613 (= res!267589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449614 () Bool)

(declare-fun res!267591 () Bool)

(assert (=> b!449614 (=> (not res!267591) (not e!263568))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449614 (= res!267591 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13711 _keys!709))))))

(declare-fun b!449615 () Bool)

(declare-fun e!263569 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!449615 (= e!263569 (and (= from!863 i!563) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13711 _keys!709)) (bvsge (bvsub (size!13711 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (bvsub (size!13711 _keys!709) from!863))))))

(declare-datatypes ((V!17149 0))(
  ( (V!17150 (val!6061 Int)) )
))
(declare-fun minValue!515 () V!17149)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5673 0))(
  ( (ValueCellFull!5673 (v!8312 V!17149)) (EmptyCell!5673) )
))
(declare-datatypes ((array!27835 0))(
  ( (array!27836 (arr!13360 (Array (_ BitVec 32) ValueCell!5673)) (size!13712 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27835)

(declare-fun zeroValue!515 () V!17149)

(declare-fun lt!204401 () array!27833)

(declare-datatypes ((tuple2!7898 0))(
  ( (tuple2!7899 (_1!3959 (_ BitVec 64)) (_2!3959 V!17149)) )
))
(declare-datatypes ((List!8008 0))(
  ( (Nil!8005) (Cons!8004 (h!8860 tuple2!7898) (t!13778 List!8008)) )
))
(declare-datatypes ((ListLongMap!6825 0))(
  ( (ListLongMap!6826 (toList!3428 List!8008)) )
))
(declare-fun lt!204403 () ListLongMap!6825)

(declare-fun v!412 () V!17149)

(declare-fun getCurrentListMapNoExtraKeys!1608 (array!27833 array!27835 (_ BitVec 32) (_ BitVec 32) V!17149 V!17149 (_ BitVec 32) Int) ListLongMap!6825)

(assert (=> b!449615 (= lt!204403 (getCurrentListMapNoExtraKeys!1608 lt!204401 (array!27836 (store (arr!13360 _values!549) i!563 (ValueCellFull!5673 v!412)) (size!13712 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204402 () ListLongMap!6825)

(assert (=> b!449615 (= lt!204402 (getCurrentListMapNoExtraKeys!1608 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449616 () Bool)

(declare-fun e!263566 () Bool)

(declare-fun tp_is_empty!12033 () Bool)

(assert (=> b!449616 (= e!263566 tp_is_empty!12033)))

(declare-fun b!449617 () Bool)

(assert (=> b!449617 (= e!263568 e!263569)))

(declare-fun res!267583 () Bool)

(assert (=> b!449617 (=> (not res!267583) (not e!263569))))

(assert (=> b!449617 (= res!267583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204401 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!449617 (= lt!204401 (array!27834 (store (arr!13359 _keys!709) i!563 k0!794) (size!13711 _keys!709)))))

(declare-fun b!449618 () Bool)

(declare-fun e!263571 () Bool)

(assert (=> b!449618 (= e!263571 tp_is_empty!12033)))

(declare-fun b!449619 () Bool)

(declare-fun res!267585 () Bool)

(assert (=> b!449619 (=> (not res!267585) (not e!263568))))

(assert (=> b!449619 (= res!267585 (or (= (select (arr!13359 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13359 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19683 () Bool)

(declare-fun mapRes!19683 () Bool)

(assert (=> mapIsEmpty!19683 mapRes!19683))

(declare-fun res!267586 () Bool)

(assert (=> start!40692 (=> (not res!267586) (not e!263568))))

(assert (=> start!40692 (= res!267586 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13711 _keys!709))))))

(assert (=> start!40692 e!263568))

(assert (=> start!40692 tp_is_empty!12033))

(assert (=> start!40692 tp!37905))

(assert (=> start!40692 true))

(declare-fun e!263570 () Bool)

(declare-fun array_inv!9668 (array!27835) Bool)

(assert (=> start!40692 (and (array_inv!9668 _values!549) e!263570)))

(declare-fun array_inv!9669 (array!27833) Bool)

(assert (=> start!40692 (array_inv!9669 _keys!709)))

(declare-fun mapNonEmpty!19683 () Bool)

(declare-fun tp!37904 () Bool)

(assert (=> mapNonEmpty!19683 (= mapRes!19683 (and tp!37904 e!263571))))

(declare-fun mapKey!19683 () (_ BitVec 32))

(declare-fun mapRest!19683 () (Array (_ BitVec 32) ValueCell!5673))

(declare-fun mapValue!19683 () ValueCell!5673)

(assert (=> mapNonEmpty!19683 (= (arr!13360 _values!549) (store mapRest!19683 mapKey!19683 mapValue!19683))))

(declare-fun b!449620 () Bool)

(declare-fun res!267584 () Bool)

(assert (=> b!449620 (=> (not res!267584) (not e!263568))))

(declare-fun arrayContainsKey!0 (array!27833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449620 (= res!267584 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!449621 () Bool)

(declare-fun res!267590 () Bool)

(assert (=> b!449621 (=> (not res!267590) (not e!263569))))

(assert (=> b!449621 (= res!267590 (bvsle from!863 i!563))))

(declare-fun b!449622 () Bool)

(declare-fun res!267594 () Bool)

(assert (=> b!449622 (=> (not res!267594) (not e!263568))))

(declare-datatypes ((List!8009 0))(
  ( (Nil!8006) (Cons!8005 (h!8861 (_ BitVec 64)) (t!13779 List!8009)) )
))
(declare-fun arrayNoDuplicates!0 (array!27833 (_ BitVec 32) List!8009) Bool)

(assert (=> b!449622 (= res!267594 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8006))))

(declare-fun b!449623 () Bool)

(declare-fun res!267588 () Bool)

(assert (=> b!449623 (=> (not res!267588) (not e!263568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449623 (= res!267588 (validKeyInArray!0 k0!794))))

(declare-fun b!449624 () Bool)

(declare-fun res!267593 () Bool)

(assert (=> b!449624 (=> (not res!267593) (not e!263569))))

(assert (=> b!449624 (= res!267593 (arrayNoDuplicates!0 lt!204401 #b00000000000000000000000000000000 Nil!8006))))

(declare-fun b!449625 () Bool)

(assert (=> b!449625 (= e!263570 (and e!263566 mapRes!19683))))

(declare-fun condMapEmpty!19683 () Bool)

(declare-fun mapDefault!19683 () ValueCell!5673)

(assert (=> b!449625 (= condMapEmpty!19683 (= (arr!13360 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5673)) mapDefault!19683)))))

(declare-fun b!449626 () Bool)

(declare-fun res!267592 () Bool)

(assert (=> b!449626 (=> (not res!267592) (not e!263568))))

(assert (=> b!449626 (= res!267592 (and (= (size!13712 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13711 _keys!709) (size!13712 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!40692 res!267586) b!449612))

(assert (= (and b!449612 res!267587) b!449626))

(assert (= (and b!449626 res!267592) b!449613))

(assert (= (and b!449613 res!267589) b!449622))

(assert (= (and b!449622 res!267594) b!449614))

(assert (= (and b!449614 res!267591) b!449623))

(assert (= (and b!449623 res!267588) b!449619))

(assert (= (and b!449619 res!267585) b!449620))

(assert (= (and b!449620 res!267584) b!449617))

(assert (= (and b!449617 res!267583) b!449624))

(assert (= (and b!449624 res!267593) b!449621))

(assert (= (and b!449621 res!267590) b!449615))

(assert (= (and b!449625 condMapEmpty!19683) mapIsEmpty!19683))

(assert (= (and b!449625 (not condMapEmpty!19683)) mapNonEmpty!19683))

(get-info :version)

(assert (= (and mapNonEmpty!19683 ((_ is ValueCellFull!5673) mapValue!19683)) b!449618))

(assert (= (and b!449625 ((_ is ValueCellFull!5673) mapDefault!19683)) b!449616))

(assert (= start!40692 b!449625))

(declare-fun m!433745 () Bool)

(assert (=> b!449623 m!433745))

(declare-fun m!433747 () Bool)

(assert (=> b!449612 m!433747))

(declare-fun m!433749 () Bool)

(assert (=> b!449620 m!433749))

(declare-fun m!433751 () Bool)

(assert (=> b!449624 m!433751))

(declare-fun m!433753 () Bool)

(assert (=> b!449619 m!433753))

(declare-fun m!433755 () Bool)

(assert (=> b!449613 m!433755))

(declare-fun m!433757 () Bool)

(assert (=> b!449615 m!433757))

(declare-fun m!433759 () Bool)

(assert (=> b!449615 m!433759))

(declare-fun m!433761 () Bool)

(assert (=> b!449615 m!433761))

(declare-fun m!433763 () Bool)

(assert (=> mapNonEmpty!19683 m!433763))

(declare-fun m!433765 () Bool)

(assert (=> b!449617 m!433765))

(declare-fun m!433767 () Bool)

(assert (=> b!449617 m!433767))

(declare-fun m!433769 () Bool)

(assert (=> b!449622 m!433769))

(declare-fun m!433771 () Bool)

(assert (=> start!40692 m!433771))

(declare-fun m!433773 () Bool)

(assert (=> start!40692 m!433773))

(check-sat (not b!449623) (not mapNonEmpty!19683) (not b!449620) (not b!449624) b_and!18721 (not b_next!10695) (not b!449615) (not b!449612) (not b!449613) (not b!449622) (not start!40692) tp_is_empty!12033 (not b!449617))
(check-sat b_and!18721 (not b_next!10695))
