; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38366 () Bool)

(assert start!38366)

(declare-fun b!395431 () Bool)

(declare-fun res!226785 () Bool)

(declare-fun e!239404 () Bool)

(assert (=> b!395431 (=> (not res!226785) (not e!239404))))

(declare-datatypes ((array!23535 0))(
  ( (array!23536 (arr!11217 (Array (_ BitVec 32) (_ BitVec 64))) (size!11569 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23535)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23535 (_ BitVec 32)) Bool)

(assert (=> b!395431 (= res!226785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226790 () Bool)

(assert (=> start!38366 (=> (not res!226790) (not e!239404))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38366 (= res!226790 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11569 _keys!709))))))

(assert (=> start!38366 e!239404))

(assert (=> start!38366 true))

(declare-datatypes ((V!14205 0))(
  ( (V!14206 (val!4957 Int)) )
))
(declare-datatypes ((ValueCell!4569 0))(
  ( (ValueCellFull!4569 (v!7199 V!14205)) (EmptyCell!4569) )
))
(declare-datatypes ((array!23537 0))(
  ( (array!23538 (arr!11218 (Array (_ BitVec 32) ValueCell!4569)) (size!11570 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23537)

(declare-fun e!239402 () Bool)

(declare-fun array_inv!8214 (array!23537) Bool)

(assert (=> start!38366 (and (array_inv!8214 _values!549) e!239402)))

(declare-fun array_inv!8215 (array!23535) Bool)

(assert (=> start!38366 (array_inv!8215 _keys!709)))

(declare-fun b!395432 () Bool)

(declare-fun e!239403 () Bool)

(declare-fun tp_is_empty!9825 () Bool)

(assert (=> b!395432 (= e!239403 tp_is_empty!9825)))

(declare-fun b!395433 () Bool)

(assert (=> b!395433 (= e!239404 (and (= (size!11569 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)) (bvsgt #b00000000000000000000000000000000 (size!11569 _keys!709))))))

(declare-fun b!395434 () Bool)

(declare-fun res!226792 () Bool)

(assert (=> b!395434 (=> (not res!226792) (not e!239404))))

(declare-datatypes ((List!6478 0))(
  ( (Nil!6475) (Cons!6474 (h!7330 (_ BitVec 64)) (t!11660 List!6478)) )
))
(declare-fun arrayNoDuplicates!0 (array!23535 (_ BitVec 32) List!6478) Bool)

(assert (=> b!395434 (= res!226792 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6475))))

(declare-fun b!395435 () Bool)

(declare-fun res!226784 () Bool)

(assert (=> b!395435 (=> (not res!226784) (not e!239404))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!395435 (= res!226784 (and (= (size!11570 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11569 _keys!709) (size!11570 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395436 () Bool)

(declare-fun res!226787 () Bool)

(assert (=> b!395436 (=> (not res!226787) (not e!239404))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!395436 (= res!226787 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11569 _keys!709))))))

(declare-fun b!395437 () Bool)

(declare-fun mapRes!16350 () Bool)

(assert (=> b!395437 (= e!239402 (and e!239403 mapRes!16350))))

(declare-fun condMapEmpty!16350 () Bool)

(declare-fun mapDefault!16350 () ValueCell!4569)

(assert (=> b!395437 (= condMapEmpty!16350 (= (arr!11218 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4569)) mapDefault!16350)))))

(declare-fun b!395438 () Bool)

(declare-fun res!226786 () Bool)

(assert (=> b!395438 (=> (not res!226786) (not e!239404))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!395438 (= res!226786 (validKeyInArray!0 k0!794))))

(declare-fun b!395439 () Bool)

(declare-fun e!239405 () Bool)

(assert (=> b!395439 (= e!239405 tp_is_empty!9825)))

(declare-fun b!395440 () Bool)

(declare-fun res!226788 () Bool)

(assert (=> b!395440 (=> (not res!226788) (not e!239404))))

(assert (=> b!395440 (= res!226788 (or (= (select (arr!11217 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11217 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16350 () Bool)

(declare-fun tp!32145 () Bool)

(assert (=> mapNonEmpty!16350 (= mapRes!16350 (and tp!32145 e!239405))))

(declare-fun mapRest!16350 () (Array (_ BitVec 32) ValueCell!4569))

(declare-fun mapValue!16350 () ValueCell!4569)

(declare-fun mapKey!16350 () (_ BitVec 32))

(assert (=> mapNonEmpty!16350 (= (arr!11218 _values!549) (store mapRest!16350 mapKey!16350 mapValue!16350))))

(declare-fun b!395441 () Bool)

(declare-fun res!226789 () Bool)

(assert (=> b!395441 (=> (not res!226789) (not e!239404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395441 (= res!226789 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16350 () Bool)

(assert (=> mapIsEmpty!16350 mapRes!16350))

(declare-fun b!395442 () Bool)

(declare-fun res!226791 () Bool)

(assert (=> b!395442 (=> (not res!226791) (not e!239404))))

(declare-fun arrayContainsKey!0 (array!23535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!395442 (= res!226791 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38366 res!226790) b!395441))

(assert (= (and b!395441 res!226789) b!395435))

(assert (= (and b!395435 res!226784) b!395431))

(assert (= (and b!395431 res!226785) b!395434))

(assert (= (and b!395434 res!226792) b!395436))

(assert (= (and b!395436 res!226787) b!395438))

(assert (= (and b!395438 res!226786) b!395440))

(assert (= (and b!395440 res!226788) b!395442))

(assert (= (and b!395442 res!226791) b!395433))

(assert (= (and b!395437 condMapEmpty!16350) mapIsEmpty!16350))

(assert (= (and b!395437 (not condMapEmpty!16350)) mapNonEmpty!16350))

(get-info :version)

(assert (= (and mapNonEmpty!16350 ((_ is ValueCellFull!4569) mapValue!16350)) b!395439))

(assert (= (and b!395437 ((_ is ValueCellFull!4569) mapDefault!16350)) b!395432))

(assert (= start!38366 b!395437))

(declare-fun m!391431 () Bool)

(assert (=> b!395441 m!391431))

(declare-fun m!391433 () Bool)

(assert (=> b!395440 m!391433))

(declare-fun m!391435 () Bool)

(assert (=> mapNonEmpty!16350 m!391435))

(declare-fun m!391437 () Bool)

(assert (=> b!395438 m!391437))

(declare-fun m!391439 () Bool)

(assert (=> b!395442 m!391439))

(declare-fun m!391441 () Bool)

(assert (=> start!38366 m!391441))

(declare-fun m!391443 () Bool)

(assert (=> start!38366 m!391443))

(declare-fun m!391445 () Bool)

(assert (=> b!395431 m!391445))

(declare-fun m!391447 () Bool)

(assert (=> b!395434 m!391447))

(check-sat (not b!395442) (not start!38366) tp_is_empty!9825 (not mapNonEmpty!16350) (not b!395438) (not b!395434) (not b!395441) (not b!395431))
(check-sat)
