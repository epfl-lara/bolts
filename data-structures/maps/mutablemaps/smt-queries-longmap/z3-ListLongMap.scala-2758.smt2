; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40410 () Bool)

(assert start!40410)

(declare-fun b!443990 () Bool)

(declare-fun res!263300 () Bool)

(declare-fun e!261150 () Bool)

(assert (=> b!443990 (=> (not res!263300) (not e!261150))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443990 (= res!263300 (validMask!0 mask!1025))))

(declare-fun b!443991 () Bool)

(declare-fun res!263299 () Bool)

(assert (=> b!443991 (=> (not res!263299) (not e!261150))))

(declare-datatypes ((array!27347 0))(
  ( (array!27348 (arr!13118 (Array (_ BitVec 32) (_ BitVec 64))) (size!13470 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27347)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27347 (_ BitVec 32)) Bool)

(assert (=> b!443991 (= res!263299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19308 () Bool)

(declare-fun mapRes!19308 () Bool)

(assert (=> mapIsEmpty!19308 mapRes!19308))

(declare-fun b!443992 () Bool)

(declare-fun res!263297 () Bool)

(assert (=> b!443992 (=> (not res!263297) (not e!261150))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16821 0))(
  ( (V!16822 (val!5938 Int)) )
))
(declare-datatypes ((ValueCell!5550 0))(
  ( (ValueCellFull!5550 (v!8185 V!16821)) (EmptyCell!5550) )
))
(declare-datatypes ((array!27349 0))(
  ( (array!27350 (arr!13119 (Array (_ BitVec 32) ValueCell!5550)) (size!13471 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27349)

(assert (=> b!443992 (= res!263297 (and (= (size!13471 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13470 _keys!709) (size!13471 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443993 () Bool)

(declare-fun e!261149 () Bool)

(declare-fun tp_is_empty!11787 () Bool)

(assert (=> b!443993 (= e!261149 tp_is_empty!11787)))

(declare-fun res!263298 () Bool)

(assert (=> start!40410 (=> (not res!263298) (not e!261150))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40410 (= res!263298 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13470 _keys!709))))))

(assert (=> start!40410 e!261150))

(assert (=> start!40410 true))

(declare-fun e!261151 () Bool)

(declare-fun array_inv!9504 (array!27349) Bool)

(assert (=> start!40410 (and (array_inv!9504 _values!549) e!261151)))

(declare-fun array_inv!9505 (array!27347) Bool)

(assert (=> start!40410 (array_inv!9505 _keys!709)))

(declare-fun b!443994 () Bool)

(declare-fun res!263304 () Bool)

(assert (=> b!443994 (=> (not res!263304) (not e!261150))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443994 (= res!263304 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13470 _keys!709))))))

(declare-fun b!443995 () Bool)

(declare-fun e!261148 () Bool)

(assert (=> b!443995 (= e!261148 false)))

(declare-fun lt!203414 () Bool)

(declare-fun lt!203415 () array!27347)

(declare-datatypes ((List!7835 0))(
  ( (Nil!7832) (Cons!7831 (h!8687 (_ BitVec 64)) (t!13601 List!7835)) )
))
(declare-fun arrayNoDuplicates!0 (array!27347 (_ BitVec 32) List!7835) Bool)

(assert (=> b!443995 (= lt!203414 (arrayNoDuplicates!0 lt!203415 #b00000000000000000000000000000000 Nil!7832))))

(declare-fun b!443996 () Bool)

(declare-fun res!263302 () Bool)

(assert (=> b!443996 (=> (not res!263302) (not e!261150))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443996 (= res!263302 (validKeyInArray!0 k0!794))))

(declare-fun mapNonEmpty!19308 () Bool)

(declare-fun tp!37290 () Bool)

(declare-fun e!261153 () Bool)

(assert (=> mapNonEmpty!19308 (= mapRes!19308 (and tp!37290 e!261153))))

(declare-fun mapRest!19308 () (Array (_ BitVec 32) ValueCell!5550))

(declare-fun mapValue!19308 () ValueCell!5550)

(declare-fun mapKey!19308 () (_ BitVec 32))

(assert (=> mapNonEmpty!19308 (= (arr!13119 _values!549) (store mapRest!19308 mapKey!19308 mapValue!19308))))

(declare-fun b!443997 () Bool)

(declare-fun res!263301 () Bool)

(assert (=> b!443997 (=> (not res!263301) (not e!261150))))

(assert (=> b!443997 (= res!263301 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7832))))

(declare-fun b!443998 () Bool)

(declare-fun res!263305 () Bool)

(assert (=> b!443998 (=> (not res!263305) (not e!261150))))

(assert (=> b!443998 (= res!263305 (or (= (select (arr!13118 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13118 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443999 () Bool)

(declare-fun res!263303 () Bool)

(assert (=> b!443999 (=> (not res!263303) (not e!261150))))

(declare-fun arrayContainsKey!0 (array!27347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443999 (= res!263303 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444000 () Bool)

(assert (=> b!444000 (= e!261151 (and e!261149 mapRes!19308))))

(declare-fun condMapEmpty!19308 () Bool)

(declare-fun mapDefault!19308 () ValueCell!5550)

(assert (=> b!444000 (= condMapEmpty!19308 (= (arr!13119 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5550)) mapDefault!19308)))))

(declare-fun b!444001 () Bool)

(assert (=> b!444001 (= e!261153 tp_is_empty!11787)))

(declare-fun b!444002 () Bool)

(assert (=> b!444002 (= e!261150 e!261148)))

(declare-fun res!263296 () Bool)

(assert (=> b!444002 (=> (not res!263296) (not e!261148))))

(assert (=> b!444002 (= res!263296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203415 mask!1025))))

(assert (=> b!444002 (= lt!203415 (array!27348 (store (arr!13118 _keys!709) i!563 k0!794) (size!13470 _keys!709)))))

(assert (= (and start!40410 res!263298) b!443990))

(assert (= (and b!443990 res!263300) b!443992))

(assert (= (and b!443992 res!263297) b!443991))

(assert (= (and b!443991 res!263299) b!443997))

(assert (= (and b!443997 res!263301) b!443994))

(assert (= (and b!443994 res!263304) b!443996))

(assert (= (and b!443996 res!263302) b!443998))

(assert (= (and b!443998 res!263305) b!443999))

(assert (= (and b!443999 res!263303) b!444002))

(assert (= (and b!444002 res!263296) b!443995))

(assert (= (and b!444000 condMapEmpty!19308) mapIsEmpty!19308))

(assert (= (and b!444000 (not condMapEmpty!19308)) mapNonEmpty!19308))

(get-info :version)

(assert (= (and mapNonEmpty!19308 ((_ is ValueCellFull!5550) mapValue!19308)) b!444001))

(assert (= (and b!444000 ((_ is ValueCellFull!5550) mapDefault!19308)) b!443993))

(assert (= start!40410 b!444000))

(declare-fun m!430007 () Bool)

(assert (=> b!443996 m!430007))

(declare-fun m!430009 () Bool)

(assert (=> b!443991 m!430009))

(declare-fun m!430011 () Bool)

(assert (=> b!443990 m!430011))

(declare-fun m!430013 () Bool)

(assert (=> b!443998 m!430013))

(declare-fun m!430015 () Bool)

(assert (=> b!444002 m!430015))

(declare-fun m!430017 () Bool)

(assert (=> b!444002 m!430017))

(declare-fun m!430019 () Bool)

(assert (=> b!443999 m!430019))

(declare-fun m!430021 () Bool)

(assert (=> start!40410 m!430021))

(declare-fun m!430023 () Bool)

(assert (=> start!40410 m!430023))

(declare-fun m!430025 () Bool)

(assert (=> b!443995 m!430025))

(declare-fun m!430027 () Bool)

(assert (=> mapNonEmpty!19308 m!430027))

(declare-fun m!430029 () Bool)

(assert (=> b!443997 m!430029))

(check-sat (not b!443995) (not b!443997) (not b!443999) tp_is_empty!11787 (not b!443990) (not b!444002) (not b!443991) (not mapNonEmpty!19308) (not b!443996) (not start!40410))
(check-sat)
