; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40386 () Bool)

(assert start!40386)

(declare-fun res!262940 () Bool)

(declare-fun e!260937 () Bool)

(assert (=> start!40386 (=> (not res!262940) (not e!260937))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27305 0))(
  ( (array!27306 (arr!13097 (Array (_ BitVec 32) (_ BitVec 64))) (size!13449 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27305)

(assert (=> start!40386 (= res!262940 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13449 _keys!709))))))

(assert (=> start!40386 e!260937))

(assert (=> start!40386 true))

(declare-datatypes ((V!16789 0))(
  ( (V!16790 (val!5926 Int)) )
))
(declare-datatypes ((ValueCell!5538 0))(
  ( (ValueCellFull!5538 (v!8173 V!16789)) (EmptyCell!5538) )
))
(declare-datatypes ((array!27307 0))(
  ( (array!27308 (arr!13098 (Array (_ BitVec 32) ValueCell!5538)) (size!13450 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27307)

(declare-fun e!260932 () Bool)

(declare-fun array_inv!9494 (array!27307) Bool)

(assert (=> start!40386 (and (array_inv!9494 _values!549) e!260932)))

(declare-fun array_inv!9495 (array!27305) Bool)

(assert (=> start!40386 (array_inv!9495 _keys!709)))

(declare-fun b!443522 () Bool)

(declare-fun res!262939 () Bool)

(assert (=> b!443522 (=> (not res!262939) (not e!260937))))

(declare-datatypes ((List!7827 0))(
  ( (Nil!7824) (Cons!7823 (h!8679 (_ BitVec 64)) (t!13593 List!7827)) )
))
(declare-fun arrayNoDuplicates!0 (array!27305 (_ BitVec 32) List!7827) Bool)

(assert (=> b!443522 (= res!262939 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7824))))

(declare-fun b!443523 () Bool)

(declare-fun res!262938 () Bool)

(assert (=> b!443523 (=> (not res!262938) (not e!260937))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443523 (= res!262938 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443524 () Bool)

(declare-fun res!262942 () Bool)

(assert (=> b!443524 (=> (not res!262942) (not e!260937))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443524 (= res!262942 (or (= (select (arr!13097 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13097 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443525 () Bool)

(declare-fun res!262944 () Bool)

(assert (=> b!443525 (=> (not res!262944) (not e!260937))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27305 (_ BitVec 32)) Bool)

(assert (=> b!443525 (= res!262944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443526 () Bool)

(declare-fun e!260935 () Bool)

(declare-fun mapRes!19272 () Bool)

(assert (=> b!443526 (= e!260932 (and e!260935 mapRes!19272))))

(declare-fun condMapEmpty!19272 () Bool)

(declare-fun mapDefault!19272 () ValueCell!5538)

(assert (=> b!443526 (= condMapEmpty!19272 (= (arr!13098 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5538)) mapDefault!19272)))))

(declare-fun b!443527 () Bool)

(declare-fun e!260933 () Bool)

(assert (=> b!443527 (= e!260937 e!260933)))

(declare-fun res!262945 () Bool)

(assert (=> b!443527 (=> (not res!262945) (not e!260933))))

(declare-fun lt!203342 () array!27305)

(assert (=> b!443527 (= res!262945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203342 mask!1025))))

(assert (=> b!443527 (= lt!203342 (array!27306 (store (arr!13097 _keys!709) i!563 k0!794) (size!13449 _keys!709)))))

(declare-fun b!443528 () Bool)

(declare-fun res!262943 () Bool)

(assert (=> b!443528 (=> (not res!262943) (not e!260937))))

(assert (=> b!443528 (= res!262943 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13449 _keys!709))))))

(declare-fun b!443529 () Bool)

(declare-fun res!262937 () Bool)

(assert (=> b!443529 (=> (not res!262937) (not e!260937))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443529 (= res!262937 (and (= (size!13450 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13449 _keys!709) (size!13450 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443530 () Bool)

(declare-fun res!262941 () Bool)

(assert (=> b!443530 (=> (not res!262941) (not e!260937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443530 (= res!262941 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19272 () Bool)

(declare-fun tp!37254 () Bool)

(declare-fun e!260936 () Bool)

(assert (=> mapNonEmpty!19272 (= mapRes!19272 (and tp!37254 e!260936))))

(declare-fun mapRest!19272 () (Array (_ BitVec 32) ValueCell!5538))

(declare-fun mapValue!19272 () ValueCell!5538)

(declare-fun mapKey!19272 () (_ BitVec 32))

(assert (=> mapNonEmpty!19272 (= (arr!13098 _values!549) (store mapRest!19272 mapKey!19272 mapValue!19272))))

(declare-fun b!443531 () Bool)

(declare-fun tp_is_empty!11763 () Bool)

(assert (=> b!443531 (= e!260935 tp_is_empty!11763)))

(declare-fun b!443532 () Bool)

(declare-fun res!262936 () Bool)

(assert (=> b!443532 (=> (not res!262936) (not e!260937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443532 (= res!262936 (validKeyInArray!0 k0!794))))

(declare-fun b!443533 () Bool)

(assert (=> b!443533 (= e!260936 tp_is_empty!11763)))

(declare-fun mapIsEmpty!19272 () Bool)

(assert (=> mapIsEmpty!19272 mapRes!19272))

(declare-fun b!443534 () Bool)

(assert (=> b!443534 (= e!260933 false)))

(declare-fun lt!203343 () Bool)

(assert (=> b!443534 (= lt!203343 (arrayNoDuplicates!0 lt!203342 #b00000000000000000000000000000000 Nil!7824))))

(assert (= (and start!40386 res!262940) b!443530))

(assert (= (and b!443530 res!262941) b!443529))

(assert (= (and b!443529 res!262937) b!443525))

(assert (= (and b!443525 res!262944) b!443522))

(assert (= (and b!443522 res!262939) b!443528))

(assert (= (and b!443528 res!262943) b!443532))

(assert (= (and b!443532 res!262936) b!443524))

(assert (= (and b!443524 res!262942) b!443523))

(assert (= (and b!443523 res!262938) b!443527))

(assert (= (and b!443527 res!262945) b!443534))

(assert (= (and b!443526 condMapEmpty!19272) mapIsEmpty!19272))

(assert (= (and b!443526 (not condMapEmpty!19272)) mapNonEmpty!19272))

(get-info :version)

(assert (= (and mapNonEmpty!19272 ((_ is ValueCellFull!5538) mapValue!19272)) b!443533))

(assert (= (and b!443526 ((_ is ValueCellFull!5538) mapDefault!19272)) b!443531))

(assert (= start!40386 b!443526))

(declare-fun m!429719 () Bool)

(assert (=> mapNonEmpty!19272 m!429719))

(declare-fun m!429721 () Bool)

(assert (=> b!443522 m!429721))

(declare-fun m!429723 () Bool)

(assert (=> start!40386 m!429723))

(declare-fun m!429725 () Bool)

(assert (=> start!40386 m!429725))

(declare-fun m!429727 () Bool)

(assert (=> b!443527 m!429727))

(declare-fun m!429729 () Bool)

(assert (=> b!443527 m!429729))

(declare-fun m!429731 () Bool)

(assert (=> b!443523 m!429731))

(declare-fun m!429733 () Bool)

(assert (=> b!443530 m!429733))

(declare-fun m!429735 () Bool)

(assert (=> b!443524 m!429735))

(declare-fun m!429737 () Bool)

(assert (=> b!443534 m!429737))

(declare-fun m!429739 () Bool)

(assert (=> b!443525 m!429739))

(declare-fun m!429741 () Bool)

(assert (=> b!443532 m!429741))

(check-sat tp_is_empty!11763 (not b!443532) (not b!443530) (not mapNonEmpty!19272) (not b!443523) (not b!443527) (not b!443534) (not start!40386) (not b!443522) (not b!443525))
(check-sat)
