; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40428 () Bool)

(assert start!40428)

(declare-fun b!444341 () Bool)

(declare-fun res!263573 () Bool)

(declare-fun e!261311 () Bool)

(assert (=> b!444341 (=> (not res!263573) (not e!261311))))

(declare-datatypes ((array!27381 0))(
  ( (array!27382 (arr!13135 (Array (_ BitVec 32) (_ BitVec 64))) (size!13487 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27381)

(declare-datatypes ((List!7843 0))(
  ( (Nil!7840) (Cons!7839 (h!8695 (_ BitVec 64)) (t!13609 List!7843)) )
))
(declare-fun arrayNoDuplicates!0 (array!27381 (_ BitVec 32) List!7843) Bool)

(assert (=> b!444341 (= res!263573 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7840))))

(declare-fun b!444343 () Bool)

(declare-fun res!263571 () Bool)

(assert (=> b!444343 (=> (not res!263571) (not e!261311))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444343 (= res!263571 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13487 _keys!709))))))

(declare-fun b!444344 () Bool)

(declare-fun res!263569 () Bool)

(assert (=> b!444344 (=> (not res!263569) (not e!261311))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27381 (_ BitVec 32)) Bool)

(assert (=> b!444344 (= res!263569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444345 () Bool)

(declare-fun e!261312 () Bool)

(declare-fun tp_is_empty!11805 () Bool)

(assert (=> b!444345 (= e!261312 tp_is_empty!11805)))

(declare-fun b!444346 () Bool)

(declare-fun e!261310 () Bool)

(assert (=> b!444346 (= e!261310 false)))

(declare-fun lt!203468 () Bool)

(declare-fun lt!203469 () array!27381)

(assert (=> b!444346 (= lt!203468 (arrayNoDuplicates!0 lt!203469 #b00000000000000000000000000000000 Nil!7840))))

(declare-fun b!444347 () Bool)

(declare-fun res!263570 () Bool)

(assert (=> b!444347 (=> (not res!263570) (not e!261311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444347 (= res!263570 (validMask!0 mask!1025))))

(declare-fun b!444348 () Bool)

(declare-fun res!263568 () Bool)

(assert (=> b!444348 (=> (not res!263568) (not e!261311))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16845 0))(
  ( (V!16846 (val!5947 Int)) )
))
(declare-datatypes ((ValueCell!5559 0))(
  ( (ValueCellFull!5559 (v!8194 V!16845)) (EmptyCell!5559) )
))
(declare-datatypes ((array!27383 0))(
  ( (array!27384 (arr!13136 (Array (_ BitVec 32) ValueCell!5559)) (size!13488 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27383)

(assert (=> b!444348 (= res!263568 (and (= (size!13488 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13487 _keys!709) (size!13488 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444349 () Bool)

(declare-fun res!263575 () Bool)

(assert (=> b!444349 (=> (not res!263575) (not e!261311))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444349 (= res!263575 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444350 () Bool)

(declare-fun res!263574 () Bool)

(assert (=> b!444350 (=> (not res!263574) (not e!261311))))

(assert (=> b!444350 (= res!263574 (or (= (select (arr!13135 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13135 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19335 () Bool)

(declare-fun mapRes!19335 () Bool)

(assert (=> mapIsEmpty!19335 mapRes!19335))

(declare-fun b!444351 () Bool)

(assert (=> b!444351 (= e!261311 e!261310)))

(declare-fun res!263572 () Bool)

(assert (=> b!444351 (=> (not res!263572) (not e!261310))))

(assert (=> b!444351 (= res!263572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203469 mask!1025))))

(assert (=> b!444351 (= lt!203469 (array!27382 (store (arr!13135 _keys!709) i!563 k0!794) (size!13487 _keys!709)))))

(declare-fun b!444352 () Bool)

(declare-fun res!263566 () Bool)

(assert (=> b!444352 (=> (not res!263566) (not e!261311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444352 (= res!263566 (validKeyInArray!0 k0!794))))

(declare-fun b!444342 () Bool)

(declare-fun e!261314 () Bool)

(assert (=> b!444342 (= e!261314 tp_is_empty!11805)))

(declare-fun res!263567 () Bool)

(assert (=> start!40428 (=> (not res!263567) (not e!261311))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40428 (= res!263567 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13487 _keys!709))))))

(assert (=> start!40428 e!261311))

(assert (=> start!40428 true))

(declare-fun e!261313 () Bool)

(declare-fun array_inv!9514 (array!27383) Bool)

(assert (=> start!40428 (and (array_inv!9514 _values!549) e!261313)))

(declare-fun array_inv!9515 (array!27381) Bool)

(assert (=> start!40428 (array_inv!9515 _keys!709)))

(declare-fun mapNonEmpty!19335 () Bool)

(declare-fun tp!37317 () Bool)

(assert (=> mapNonEmpty!19335 (= mapRes!19335 (and tp!37317 e!261312))))

(declare-fun mapRest!19335 () (Array (_ BitVec 32) ValueCell!5559))

(declare-fun mapKey!19335 () (_ BitVec 32))

(declare-fun mapValue!19335 () ValueCell!5559)

(assert (=> mapNonEmpty!19335 (= (arr!13136 _values!549) (store mapRest!19335 mapKey!19335 mapValue!19335))))

(declare-fun b!444353 () Bool)

(assert (=> b!444353 (= e!261313 (and e!261314 mapRes!19335))))

(declare-fun condMapEmpty!19335 () Bool)

(declare-fun mapDefault!19335 () ValueCell!5559)

(assert (=> b!444353 (= condMapEmpty!19335 (= (arr!13136 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5559)) mapDefault!19335)))))

(assert (= (and start!40428 res!263567) b!444347))

(assert (= (and b!444347 res!263570) b!444348))

(assert (= (and b!444348 res!263568) b!444344))

(assert (= (and b!444344 res!263569) b!444341))

(assert (= (and b!444341 res!263573) b!444343))

(assert (= (and b!444343 res!263571) b!444352))

(assert (= (and b!444352 res!263566) b!444350))

(assert (= (and b!444350 res!263574) b!444349))

(assert (= (and b!444349 res!263575) b!444351))

(assert (= (and b!444351 res!263572) b!444346))

(assert (= (and b!444353 condMapEmpty!19335) mapIsEmpty!19335))

(assert (= (and b!444353 (not condMapEmpty!19335)) mapNonEmpty!19335))

(get-info :version)

(assert (= (and mapNonEmpty!19335 ((_ is ValueCellFull!5559) mapValue!19335)) b!444345))

(assert (= (and b!444353 ((_ is ValueCellFull!5559) mapDefault!19335)) b!444342))

(assert (= start!40428 b!444353))

(declare-fun m!430223 () Bool)

(assert (=> b!444346 m!430223))

(declare-fun m!430225 () Bool)

(assert (=> b!444347 m!430225))

(declare-fun m!430227 () Bool)

(assert (=> start!40428 m!430227))

(declare-fun m!430229 () Bool)

(assert (=> start!40428 m!430229))

(declare-fun m!430231 () Bool)

(assert (=> b!444344 m!430231))

(declare-fun m!430233 () Bool)

(assert (=> b!444341 m!430233))

(declare-fun m!430235 () Bool)

(assert (=> b!444351 m!430235))

(declare-fun m!430237 () Bool)

(assert (=> b!444351 m!430237))

(declare-fun m!430239 () Bool)

(assert (=> mapNonEmpty!19335 m!430239))

(declare-fun m!430241 () Bool)

(assert (=> b!444349 m!430241))

(declare-fun m!430243 () Bool)

(assert (=> b!444352 m!430243))

(declare-fun m!430245 () Bool)

(assert (=> b!444350 m!430245))

(check-sat (not b!444349) (not start!40428) (not b!444344) (not b!444352) tp_is_empty!11805 (not b!444341) (not b!444351) (not b!444347) (not b!444346) (not mapNonEmpty!19335))
(check-sat)
