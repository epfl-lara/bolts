; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38984 () Bool)

(assert start!38984)

(declare-fun b!408029 () Bool)

(declare-fun e!244953 () Bool)

(declare-fun tp_is_empty!10395 () Bool)

(assert (=> b!408029 (= e!244953 tp_is_empty!10395)))

(declare-fun b!408030 () Bool)

(declare-fun res!236107 () Bool)

(declare-fun e!244952 () Bool)

(assert (=> b!408030 (=> (not res!236107) (not e!244952))))

(declare-datatypes ((array!24645 0))(
  ( (array!24646 (arr!11769 (Array (_ BitVec 32) (_ BitVec 64))) (size!12121 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24645)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14965 0))(
  ( (V!14966 (val!5242 Int)) )
))
(declare-datatypes ((ValueCell!4854 0))(
  ( (ValueCellFull!4854 (v!7485 V!14965)) (EmptyCell!4854) )
))
(declare-datatypes ((array!24647 0))(
  ( (array!24648 (arr!11770 (Array (_ BitVec 32) ValueCell!4854)) (size!12122 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24647)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408030 (= res!236107 (and (= (size!12122 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12121 _keys!709) (size!12122 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408031 () Bool)

(declare-fun res!236104 () Bool)

(assert (=> b!408031 (=> (not res!236104) (not e!244952))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408031 (= res!236104 (validKeyInArray!0 k0!794))))

(declare-fun b!408032 () Bool)

(declare-fun e!244957 () Bool)

(assert (=> b!408032 (= e!244952 e!244957)))

(declare-fun res!236108 () Bool)

(assert (=> b!408032 (=> (not res!236108) (not e!244957))))

(declare-fun lt!188727 () array!24645)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24645 (_ BitVec 32)) Bool)

(assert (=> b!408032 (= res!236108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188727 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408032 (= lt!188727 (array!24646 (store (arr!11769 _keys!709) i!563 k0!794) (size!12121 _keys!709)))))

(declare-fun b!408033 () Bool)

(declare-fun res!236105 () Bool)

(assert (=> b!408033 (=> (not res!236105) (not e!244952))))

(declare-fun arrayContainsKey!0 (array!24645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408033 (= res!236105 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408034 () Bool)

(declare-fun res!236103 () Bool)

(assert (=> b!408034 (=> (not res!236103) (not e!244952))))

(assert (=> b!408034 (= res!236103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408036 () Bool)

(declare-fun res!236109 () Bool)

(assert (=> b!408036 (=> (not res!236109) (not e!244952))))

(assert (=> b!408036 (= res!236109 (or (= (select (arr!11769 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11769 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408037 () Bool)

(assert (=> b!408037 (= e!244957 false)))

(declare-fun lt!188726 () Bool)

(declare-datatypes ((List!6801 0))(
  ( (Nil!6798) (Cons!6797 (h!7653 (_ BitVec 64)) (t!11983 List!6801)) )
))
(declare-fun arrayNoDuplicates!0 (array!24645 (_ BitVec 32) List!6801) Bool)

(assert (=> b!408037 (= lt!188726 (arrayNoDuplicates!0 lt!188727 #b00000000000000000000000000000000 Nil!6798))))

(declare-fun mapNonEmpty!17214 () Bool)

(declare-fun mapRes!17214 () Bool)

(declare-fun tp!33333 () Bool)

(declare-fun e!244954 () Bool)

(assert (=> mapNonEmpty!17214 (= mapRes!17214 (and tp!33333 e!244954))))

(declare-fun mapRest!17214 () (Array (_ BitVec 32) ValueCell!4854))

(declare-fun mapValue!17214 () ValueCell!4854)

(declare-fun mapKey!17214 () (_ BitVec 32))

(assert (=> mapNonEmpty!17214 (= (arr!11770 _values!549) (store mapRest!17214 mapKey!17214 mapValue!17214))))

(declare-fun mapIsEmpty!17214 () Bool)

(assert (=> mapIsEmpty!17214 mapRes!17214))

(declare-fun b!408038 () Bool)

(declare-fun res!236111 () Bool)

(assert (=> b!408038 (=> (not res!236111) (not e!244952))))

(assert (=> b!408038 (= res!236111 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12121 _keys!709))))))

(declare-fun b!408039 () Bool)

(assert (=> b!408039 (= e!244954 tp_is_empty!10395)))

(declare-fun b!408040 () Bool)

(declare-fun e!244955 () Bool)

(assert (=> b!408040 (= e!244955 (and e!244953 mapRes!17214))))

(declare-fun condMapEmpty!17214 () Bool)

(declare-fun mapDefault!17214 () ValueCell!4854)

(assert (=> b!408040 (= condMapEmpty!17214 (= (arr!11770 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4854)) mapDefault!17214)))))

(declare-fun b!408041 () Bool)

(declare-fun res!236110 () Bool)

(assert (=> b!408041 (=> (not res!236110) (not e!244952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408041 (= res!236110 (validMask!0 mask!1025))))

(declare-fun b!408035 () Bool)

(declare-fun res!236106 () Bool)

(assert (=> b!408035 (=> (not res!236106) (not e!244952))))

(assert (=> b!408035 (= res!236106 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6798))))

(declare-fun res!236112 () Bool)

(assert (=> start!38984 (=> (not res!236112) (not e!244952))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38984 (= res!236112 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12121 _keys!709))))))

(assert (=> start!38984 e!244952))

(assert (=> start!38984 true))

(declare-fun array_inv!8596 (array!24647) Bool)

(assert (=> start!38984 (and (array_inv!8596 _values!549) e!244955)))

(declare-fun array_inv!8597 (array!24645) Bool)

(assert (=> start!38984 (array_inv!8597 _keys!709)))

(assert (= (and start!38984 res!236112) b!408041))

(assert (= (and b!408041 res!236110) b!408030))

(assert (= (and b!408030 res!236107) b!408034))

(assert (= (and b!408034 res!236103) b!408035))

(assert (= (and b!408035 res!236106) b!408038))

(assert (= (and b!408038 res!236111) b!408031))

(assert (= (and b!408031 res!236104) b!408036))

(assert (= (and b!408036 res!236109) b!408033))

(assert (= (and b!408033 res!236105) b!408032))

(assert (= (and b!408032 res!236108) b!408037))

(assert (= (and b!408040 condMapEmpty!17214) mapIsEmpty!17214))

(assert (= (and b!408040 (not condMapEmpty!17214)) mapNonEmpty!17214))

(get-info :version)

(assert (= (and mapNonEmpty!17214 ((_ is ValueCellFull!4854) mapValue!17214)) b!408039))

(assert (= (and b!408040 ((_ is ValueCellFull!4854) mapDefault!17214)) b!408029))

(assert (= start!38984 b!408040))

(declare-fun m!399453 () Bool)

(assert (=> b!408035 m!399453))

(declare-fun m!399455 () Bool)

(assert (=> b!408036 m!399455))

(declare-fun m!399457 () Bool)

(assert (=> b!408032 m!399457))

(declare-fun m!399459 () Bool)

(assert (=> b!408032 m!399459))

(declare-fun m!399461 () Bool)

(assert (=> b!408033 m!399461))

(declare-fun m!399463 () Bool)

(assert (=> start!38984 m!399463))

(declare-fun m!399465 () Bool)

(assert (=> start!38984 m!399465))

(declare-fun m!399467 () Bool)

(assert (=> b!408037 m!399467))

(declare-fun m!399469 () Bool)

(assert (=> b!408034 m!399469))

(declare-fun m!399471 () Bool)

(assert (=> mapNonEmpty!17214 m!399471))

(declare-fun m!399473 () Bool)

(assert (=> b!408031 m!399473))

(declare-fun m!399475 () Bool)

(assert (=> b!408041 m!399475))

(check-sat (not b!408033) tp_is_empty!10395 (not b!408031) (not b!408032) (not b!408037) (not b!408041) (not b!408035) (not b!408034) (not mapNonEmpty!17214) (not start!38984))
(check-sat)
