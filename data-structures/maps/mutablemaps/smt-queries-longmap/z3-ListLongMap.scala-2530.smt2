; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39008 () Bool)

(assert start!39008)

(declare-fun b!408497 () Bool)

(declare-fun res!236468 () Bool)

(declare-fun e!245172 () Bool)

(assert (=> b!408497 (=> (not res!236468) (not e!245172))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24693 0))(
  ( (array!24694 (arr!11793 (Array (_ BitVec 32) (_ BitVec 64))) (size!12145 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24693)

(assert (=> b!408497 (= res!236468 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12145 _keys!709))))))

(declare-fun b!408498 () Bool)

(declare-fun res!236471 () Bool)

(assert (=> b!408498 (=> (not res!236471) (not e!245172))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408498 (= res!236471 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408499 () Bool)

(declare-fun e!245171 () Bool)

(declare-fun tp_is_empty!10419 () Bool)

(assert (=> b!408499 (= e!245171 tp_is_empty!10419)))

(declare-fun b!408500 () Bool)

(declare-fun res!236472 () Bool)

(assert (=> b!408500 (=> (not res!236472) (not e!245172))))

(assert (=> b!408500 (= res!236472 (or (= (select (arr!11793 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11793 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408501 () Bool)

(declare-fun res!236467 () Bool)

(assert (=> b!408501 (=> (not res!236467) (not e!245172))))

(declare-datatypes ((List!6812 0))(
  ( (Nil!6809) (Cons!6808 (h!7664 (_ BitVec 64)) (t!11994 List!6812)) )
))
(declare-fun arrayNoDuplicates!0 (array!24693 (_ BitVec 32) List!6812) Bool)

(assert (=> b!408501 (= res!236467 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6809))))

(declare-fun b!408502 () Bool)

(declare-fun res!236470 () Bool)

(assert (=> b!408502 (=> (not res!236470) (not e!245172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408502 (= res!236470 (validKeyInArray!0 k0!794))))

(declare-fun b!408504 () Bool)

(declare-fun e!245168 () Bool)

(declare-fun e!245169 () Bool)

(declare-fun mapRes!17250 () Bool)

(assert (=> b!408504 (= e!245168 (and e!245169 mapRes!17250))))

(declare-fun condMapEmpty!17250 () Bool)

(declare-datatypes ((V!14997 0))(
  ( (V!14998 (val!5254 Int)) )
))
(declare-datatypes ((ValueCell!4866 0))(
  ( (ValueCellFull!4866 (v!7497 V!14997)) (EmptyCell!4866) )
))
(declare-datatypes ((array!24695 0))(
  ( (array!24696 (arr!11794 (Array (_ BitVec 32) ValueCell!4866)) (size!12146 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24695)

(declare-fun mapDefault!17250 () ValueCell!4866)

(assert (=> b!408504 (= condMapEmpty!17250 (= (arr!11794 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4866)) mapDefault!17250)))))

(declare-fun mapIsEmpty!17250 () Bool)

(assert (=> mapIsEmpty!17250 mapRes!17250))

(declare-fun b!408505 () Bool)

(declare-fun e!245173 () Bool)

(assert (=> b!408505 (= e!245173 false)))

(declare-fun lt!188799 () Bool)

(declare-fun lt!188798 () array!24693)

(assert (=> b!408505 (= lt!188799 (arrayNoDuplicates!0 lt!188798 #b00000000000000000000000000000000 Nil!6809))))

(declare-fun mapNonEmpty!17250 () Bool)

(declare-fun tp!33369 () Bool)

(assert (=> mapNonEmpty!17250 (= mapRes!17250 (and tp!33369 e!245171))))

(declare-fun mapValue!17250 () ValueCell!4866)

(declare-fun mapRest!17250 () (Array (_ BitVec 32) ValueCell!4866))

(declare-fun mapKey!17250 () (_ BitVec 32))

(assert (=> mapNonEmpty!17250 (= (arr!11794 _values!549) (store mapRest!17250 mapKey!17250 mapValue!17250))))

(declare-fun b!408506 () Bool)

(declare-fun res!236465 () Bool)

(assert (=> b!408506 (=> (not res!236465) (not e!245172))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24693 (_ BitVec 32)) Bool)

(assert (=> b!408506 (= res!236465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408507 () Bool)

(assert (=> b!408507 (= e!245172 e!245173)))

(declare-fun res!236466 () Bool)

(assert (=> b!408507 (=> (not res!236466) (not e!245173))))

(assert (=> b!408507 (= res!236466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188798 mask!1025))))

(assert (=> b!408507 (= lt!188798 (array!24694 (store (arr!11793 _keys!709) i!563 k0!794) (size!12145 _keys!709)))))

(declare-fun b!408508 () Bool)

(declare-fun res!236464 () Bool)

(assert (=> b!408508 (=> (not res!236464) (not e!245172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408508 (= res!236464 (validMask!0 mask!1025))))

(declare-fun b!408509 () Bool)

(declare-fun res!236469 () Bool)

(assert (=> b!408509 (=> (not res!236469) (not e!245172))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408509 (= res!236469 (and (= (size!12146 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12145 _keys!709) (size!12146 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408503 () Bool)

(assert (=> b!408503 (= e!245169 tp_is_empty!10419)))

(declare-fun res!236463 () Bool)

(assert (=> start!39008 (=> (not res!236463) (not e!245172))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39008 (= res!236463 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12145 _keys!709))))))

(assert (=> start!39008 e!245172))

(assert (=> start!39008 true))

(declare-fun array_inv!8614 (array!24695) Bool)

(assert (=> start!39008 (and (array_inv!8614 _values!549) e!245168)))

(declare-fun array_inv!8615 (array!24693) Bool)

(assert (=> start!39008 (array_inv!8615 _keys!709)))

(assert (= (and start!39008 res!236463) b!408508))

(assert (= (and b!408508 res!236464) b!408509))

(assert (= (and b!408509 res!236469) b!408506))

(assert (= (and b!408506 res!236465) b!408501))

(assert (= (and b!408501 res!236467) b!408497))

(assert (= (and b!408497 res!236468) b!408502))

(assert (= (and b!408502 res!236470) b!408500))

(assert (= (and b!408500 res!236472) b!408498))

(assert (= (and b!408498 res!236471) b!408507))

(assert (= (and b!408507 res!236466) b!408505))

(assert (= (and b!408504 condMapEmpty!17250) mapIsEmpty!17250))

(assert (= (and b!408504 (not condMapEmpty!17250)) mapNonEmpty!17250))

(get-info :version)

(assert (= (and mapNonEmpty!17250 ((_ is ValueCellFull!4866) mapValue!17250)) b!408499))

(assert (= (and b!408504 ((_ is ValueCellFull!4866) mapDefault!17250)) b!408503))

(assert (= start!39008 b!408504))

(declare-fun m!399741 () Bool)

(assert (=> start!39008 m!399741))

(declare-fun m!399743 () Bool)

(assert (=> start!39008 m!399743))

(declare-fun m!399745 () Bool)

(assert (=> b!408501 m!399745))

(declare-fun m!399747 () Bool)

(assert (=> b!408506 m!399747))

(declare-fun m!399749 () Bool)

(assert (=> b!408502 m!399749))

(declare-fun m!399751 () Bool)

(assert (=> b!408505 m!399751))

(declare-fun m!399753 () Bool)

(assert (=> b!408508 m!399753))

(declare-fun m!399755 () Bool)

(assert (=> b!408500 m!399755))

(declare-fun m!399757 () Bool)

(assert (=> b!408498 m!399757))

(declare-fun m!399759 () Bool)

(assert (=> mapNonEmpty!17250 m!399759))

(declare-fun m!399761 () Bool)

(assert (=> b!408507 m!399761))

(declare-fun m!399763 () Bool)

(assert (=> b!408507 m!399763))

(check-sat (not start!39008) (not b!408502) (not b!408501) tp_is_empty!10419 (not b!408506) (not b!408505) (not mapNonEmpty!17250) (not b!408498) (not b!408508) (not b!408507))
(check-sat)
