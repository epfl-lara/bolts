; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39182 () Bool)

(assert start!39182)

(declare-fun b_free!9441 () Bool)

(declare-fun b_next!9441 () Bool)

(assert (=> start!39182 (= b_free!9441 (not b_next!9441))))

(declare-fun tp!33851 () Bool)

(declare-fun b_and!16845 () Bool)

(assert (=> start!39182 (= tp!33851 b_and!16845)))

(declare-fun b!412332 () Bool)

(declare-fun res!239518 () Bool)

(declare-fun e!246734 () Bool)

(assert (=> b!412332 (=> (not res!239518) (not e!246734))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412332 (= res!239518 (validKeyInArray!0 k0!794))))

(declare-fun b!412333 () Bool)

(declare-fun e!246737 () Bool)

(declare-fun tp_is_empty!10593 () Bool)

(assert (=> b!412333 (= e!246737 tp_is_empty!10593)))

(declare-fun res!239525 () Bool)

(assert (=> start!39182 (=> (not res!239525) (not e!246734))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25025 0))(
  ( (array!25026 (arr!11959 (Array (_ BitVec 32) (_ BitVec 64))) (size!12311 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25025)

(assert (=> start!39182 (= res!239525 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12311 _keys!709))))))

(assert (=> start!39182 e!246734))

(assert (=> start!39182 tp_is_empty!10593))

(assert (=> start!39182 tp!33851))

(assert (=> start!39182 true))

(declare-datatypes ((V!15229 0))(
  ( (V!15230 (val!5341 Int)) )
))
(declare-datatypes ((ValueCell!4953 0))(
  ( (ValueCellFull!4953 (v!7584 V!15229)) (EmptyCell!4953) )
))
(declare-datatypes ((array!25027 0))(
  ( (array!25028 (arr!11960 (Array (_ BitVec 32) ValueCell!4953)) (size!12312 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25027)

(declare-fun e!246736 () Bool)

(declare-fun array_inv!8720 (array!25027) Bool)

(assert (=> start!39182 (and (array_inv!8720 _values!549) e!246736)))

(declare-fun array_inv!8721 (array!25025) Bool)

(assert (=> start!39182 (array_inv!8721 _keys!709)))

(declare-fun b!412334 () Bool)

(declare-fun mapRes!17511 () Bool)

(assert (=> b!412334 (= e!246736 (and e!246737 mapRes!17511))))

(declare-fun condMapEmpty!17511 () Bool)

(declare-fun mapDefault!17511 () ValueCell!4953)

(assert (=> b!412334 (= condMapEmpty!17511 (= (arr!11960 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4953)) mapDefault!17511)))))

(declare-fun b!412335 () Bool)

(declare-fun e!246738 () Bool)

(assert (=> b!412335 (= e!246738 tp_is_empty!10593)))

(declare-fun b!412336 () Bool)

(declare-fun e!246735 () Bool)

(assert (=> b!412336 (= e!246735 false)))

(declare-fun minValue!515 () V!15229)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189462 () array!25025)

(declare-fun zeroValue!515 () V!15229)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6856 0))(
  ( (tuple2!6857 (_1!3438 (_ BitVec 64)) (_2!3438 V!15229)) )
))
(declare-datatypes ((List!6915 0))(
  ( (Nil!6912) (Cons!6911 (h!7767 tuple2!6856) (t!12097 List!6915)) )
))
(declare-datatypes ((ListLongMap!5783 0))(
  ( (ListLongMap!5784 (toList!2907 List!6915)) )
))
(declare-fun lt!189461 () ListLongMap!5783)

(declare-fun v!412 () V!15229)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1117 (array!25025 array!25027 (_ BitVec 32) (_ BitVec 32) V!15229 V!15229 (_ BitVec 32) Int) ListLongMap!5783)

(assert (=> b!412336 (= lt!189461 (getCurrentListMapNoExtraKeys!1117 lt!189462 (array!25028 (store (arr!11960 _values!549) i!563 (ValueCellFull!4953 v!412)) (size!12312 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189460 () ListLongMap!5783)

(assert (=> b!412336 (= lt!189460 (getCurrentListMapNoExtraKeys!1117 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412337 () Bool)

(assert (=> b!412337 (= e!246734 e!246735)))

(declare-fun res!239517 () Bool)

(assert (=> b!412337 (=> (not res!239517) (not e!246735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25025 (_ BitVec 32)) Bool)

(assert (=> b!412337 (= res!239517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189462 mask!1025))))

(assert (=> b!412337 (= lt!189462 (array!25026 (store (arr!11959 _keys!709) i!563 k0!794) (size!12311 _keys!709)))))

(declare-fun mapNonEmpty!17511 () Bool)

(declare-fun tp!33852 () Bool)

(assert (=> mapNonEmpty!17511 (= mapRes!17511 (and tp!33852 e!246738))))

(declare-fun mapValue!17511 () ValueCell!4953)

(declare-fun mapKey!17511 () (_ BitVec 32))

(declare-fun mapRest!17511 () (Array (_ BitVec 32) ValueCell!4953))

(assert (=> mapNonEmpty!17511 (= (arr!11960 _values!549) (store mapRest!17511 mapKey!17511 mapValue!17511))))

(declare-fun b!412338 () Bool)

(declare-fun res!239520 () Bool)

(assert (=> b!412338 (=> (not res!239520) (not e!246734))))

(assert (=> b!412338 (= res!239520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412339 () Bool)

(declare-fun res!239526 () Bool)

(assert (=> b!412339 (=> (not res!239526) (not e!246734))))

(assert (=> b!412339 (= res!239526 (and (= (size!12312 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12311 _keys!709) (size!12312 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412340 () Bool)

(declare-fun res!239521 () Bool)

(assert (=> b!412340 (=> (not res!239521) (not e!246734))))

(assert (=> b!412340 (= res!239521 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12311 _keys!709))))))

(declare-fun b!412341 () Bool)

(declare-fun res!239523 () Bool)

(assert (=> b!412341 (=> (not res!239523) (not e!246734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412341 (= res!239523 (validMask!0 mask!1025))))

(declare-fun b!412342 () Bool)

(declare-fun res!239524 () Bool)

(assert (=> b!412342 (=> (not res!239524) (not e!246735))))

(declare-datatypes ((List!6916 0))(
  ( (Nil!6913) (Cons!6912 (h!7768 (_ BitVec 64)) (t!12098 List!6916)) )
))
(declare-fun arrayNoDuplicates!0 (array!25025 (_ BitVec 32) List!6916) Bool)

(assert (=> b!412342 (= res!239524 (arrayNoDuplicates!0 lt!189462 #b00000000000000000000000000000000 Nil!6913))))

(declare-fun b!412343 () Bool)

(declare-fun res!239522 () Bool)

(assert (=> b!412343 (=> (not res!239522) (not e!246734))))

(declare-fun arrayContainsKey!0 (array!25025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412343 (= res!239522 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412344 () Bool)

(declare-fun res!239519 () Bool)

(assert (=> b!412344 (=> (not res!239519) (not e!246734))))

(assert (=> b!412344 (= res!239519 (or (= (select (arr!11959 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11959 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17511 () Bool)

(assert (=> mapIsEmpty!17511 mapRes!17511))

(declare-fun b!412345 () Bool)

(declare-fun res!239515 () Bool)

(assert (=> b!412345 (=> (not res!239515) (not e!246734))))

(assert (=> b!412345 (= res!239515 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6913))))

(declare-fun b!412346 () Bool)

(declare-fun res!239516 () Bool)

(assert (=> b!412346 (=> (not res!239516) (not e!246735))))

(assert (=> b!412346 (= res!239516 (bvsle from!863 i!563))))

(assert (= (and start!39182 res!239525) b!412341))

(assert (= (and b!412341 res!239523) b!412339))

(assert (= (and b!412339 res!239526) b!412338))

(assert (= (and b!412338 res!239520) b!412345))

(assert (= (and b!412345 res!239515) b!412340))

(assert (= (and b!412340 res!239521) b!412332))

(assert (= (and b!412332 res!239518) b!412344))

(assert (= (and b!412344 res!239519) b!412343))

(assert (= (and b!412343 res!239522) b!412337))

(assert (= (and b!412337 res!239517) b!412342))

(assert (= (and b!412342 res!239524) b!412346))

(assert (= (and b!412346 res!239516) b!412336))

(assert (= (and b!412334 condMapEmpty!17511) mapIsEmpty!17511))

(assert (= (and b!412334 (not condMapEmpty!17511)) mapNonEmpty!17511))

(get-info :version)

(assert (= (and mapNonEmpty!17511 ((_ is ValueCellFull!4953) mapValue!17511)) b!412335))

(assert (= (and b!412334 ((_ is ValueCellFull!4953) mapDefault!17511)) b!412333))

(assert (= start!39182 b!412334))

(declare-fun m!402159 () Bool)

(assert (=> mapNonEmpty!17511 m!402159))

(declare-fun m!402161 () Bool)

(assert (=> b!412341 m!402161))

(declare-fun m!402163 () Bool)

(assert (=> b!412343 m!402163))

(declare-fun m!402165 () Bool)

(assert (=> b!412336 m!402165))

(declare-fun m!402167 () Bool)

(assert (=> b!412336 m!402167))

(declare-fun m!402169 () Bool)

(assert (=> b!412336 m!402169))

(declare-fun m!402171 () Bool)

(assert (=> start!39182 m!402171))

(declare-fun m!402173 () Bool)

(assert (=> start!39182 m!402173))

(declare-fun m!402175 () Bool)

(assert (=> b!412338 m!402175))

(declare-fun m!402177 () Bool)

(assert (=> b!412337 m!402177))

(declare-fun m!402179 () Bool)

(assert (=> b!412337 m!402179))

(declare-fun m!402181 () Bool)

(assert (=> b!412345 m!402181))

(declare-fun m!402183 () Bool)

(assert (=> b!412332 m!402183))

(declare-fun m!402185 () Bool)

(assert (=> b!412342 m!402185))

(declare-fun m!402187 () Bool)

(assert (=> b!412344 m!402187))

(check-sat (not b!412343) tp_is_empty!10593 (not b!412338) (not b!412336) (not start!39182) (not b!412337) b_and!16845 (not b_next!9441) (not b!412341) (not b!412345) (not mapNonEmpty!17511) (not b!412332) (not b!412342))
(check-sat b_and!16845 (not b_next!9441))
