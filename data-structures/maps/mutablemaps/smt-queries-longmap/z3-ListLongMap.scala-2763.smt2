; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40440 () Bool)

(assert start!40440)

(declare-fun b!444575 () Bool)

(declare-fun e!261421 () Bool)

(declare-fun tp_is_empty!11817 () Bool)

(assert (=> b!444575 (= e!261421 tp_is_empty!11817)))

(declare-fun b!444576 () Bool)

(declare-fun e!261418 () Bool)

(declare-fun e!261423 () Bool)

(assert (=> b!444576 (= e!261418 e!261423)))

(declare-fun res!263748 () Bool)

(assert (=> b!444576 (=> (not res!263748) (not e!261423))))

(declare-datatypes ((array!27405 0))(
  ( (array!27406 (arr!13147 (Array (_ BitVec 32) (_ BitVec 64))) (size!13499 (_ BitVec 32))) )
))
(declare-fun lt!203504 () array!27405)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27405 (_ BitVec 32)) Bool)

(assert (=> b!444576 (= res!263748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203504 mask!1025))))

(declare-fun _keys!709 () array!27405)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444576 (= lt!203504 (array!27406 (store (arr!13147 _keys!709) i!563 k0!794) (size!13499 _keys!709)))))

(declare-fun b!444577 () Bool)

(declare-fun res!263751 () Bool)

(assert (=> b!444577 (=> (not res!263751) (not e!261418))))

(assert (=> b!444577 (= res!263751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19353 () Bool)

(declare-fun mapRes!19353 () Bool)

(declare-fun tp!37335 () Bool)

(assert (=> mapNonEmpty!19353 (= mapRes!19353 (and tp!37335 e!261421))))

(declare-fun mapKey!19353 () (_ BitVec 32))

(declare-datatypes ((V!16861 0))(
  ( (V!16862 (val!5953 Int)) )
))
(declare-datatypes ((ValueCell!5565 0))(
  ( (ValueCellFull!5565 (v!8200 V!16861)) (EmptyCell!5565) )
))
(declare-datatypes ((array!27407 0))(
  ( (array!27408 (arr!13148 (Array (_ BitVec 32) ValueCell!5565)) (size!13500 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27407)

(declare-fun mapValue!19353 () ValueCell!5565)

(declare-fun mapRest!19353 () (Array (_ BitVec 32) ValueCell!5565))

(assert (=> mapNonEmpty!19353 (= (arr!13148 _values!549) (store mapRest!19353 mapKey!19353 mapValue!19353))))

(declare-fun b!444578 () Bool)

(declare-fun e!261419 () Bool)

(assert (=> b!444578 (= e!261419 tp_is_empty!11817)))

(declare-fun b!444579 () Bool)

(declare-fun res!263746 () Bool)

(assert (=> b!444579 (=> (not res!263746) (not e!261418))))

(assert (=> b!444579 (= res!263746 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13499 _keys!709))))))

(declare-fun b!444580 () Bool)

(declare-fun res!263750 () Bool)

(assert (=> b!444580 (=> (not res!263750) (not e!261418))))

(assert (=> b!444580 (= res!263750 (or (= (select (arr!13147 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13147 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444581 () Bool)

(declare-fun e!261422 () Bool)

(assert (=> b!444581 (= e!261422 (and e!261419 mapRes!19353))))

(declare-fun condMapEmpty!19353 () Bool)

(declare-fun mapDefault!19353 () ValueCell!5565)

(assert (=> b!444581 (= condMapEmpty!19353 (= (arr!13148 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5565)) mapDefault!19353)))))

(declare-fun b!444582 () Bool)

(declare-fun res!263752 () Bool)

(assert (=> b!444582 (=> (not res!263752) (not e!261418))))

(declare-fun arrayContainsKey!0 (array!27405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444582 (= res!263752 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!444583 () Bool)

(declare-fun res!263749 () Bool)

(assert (=> b!444583 (=> (not res!263749) (not e!261418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444583 (= res!263749 (validKeyInArray!0 k0!794))))

(declare-fun b!444584 () Bool)

(declare-fun res!263755 () Bool)

(assert (=> b!444584 (=> (not res!263755) (not e!261418))))

(declare-datatypes ((List!7848 0))(
  ( (Nil!7845) (Cons!7844 (h!8700 (_ BitVec 64)) (t!13614 List!7848)) )
))
(declare-fun arrayNoDuplicates!0 (array!27405 (_ BitVec 32) List!7848) Bool)

(assert (=> b!444584 (= res!263755 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7845))))

(declare-fun b!444585 () Bool)

(declare-fun res!263747 () Bool)

(assert (=> b!444585 (=> (not res!263747) (not e!261418))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444585 (= res!263747 (and (= (size!13500 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13499 _keys!709) (size!13500 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444586 () Bool)

(assert (=> b!444586 (= e!261423 false)))

(declare-fun lt!203505 () Bool)

(assert (=> b!444586 (= lt!203505 (arrayNoDuplicates!0 lt!203504 #b00000000000000000000000000000000 Nil!7845))))

(declare-fun b!444587 () Bool)

(declare-fun res!263753 () Bool)

(assert (=> b!444587 (=> (not res!263753) (not e!261418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444587 (= res!263753 (validMask!0 mask!1025))))

(declare-fun res!263754 () Bool)

(assert (=> start!40440 (=> (not res!263754) (not e!261418))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40440 (= res!263754 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13499 _keys!709))))))

(assert (=> start!40440 e!261418))

(assert (=> start!40440 true))

(declare-fun array_inv!9522 (array!27407) Bool)

(assert (=> start!40440 (and (array_inv!9522 _values!549) e!261422)))

(declare-fun array_inv!9523 (array!27405) Bool)

(assert (=> start!40440 (array_inv!9523 _keys!709)))

(declare-fun mapIsEmpty!19353 () Bool)

(assert (=> mapIsEmpty!19353 mapRes!19353))

(assert (= (and start!40440 res!263754) b!444587))

(assert (= (and b!444587 res!263753) b!444585))

(assert (= (and b!444585 res!263747) b!444577))

(assert (= (and b!444577 res!263751) b!444584))

(assert (= (and b!444584 res!263755) b!444579))

(assert (= (and b!444579 res!263746) b!444583))

(assert (= (and b!444583 res!263749) b!444580))

(assert (= (and b!444580 res!263750) b!444582))

(assert (= (and b!444582 res!263752) b!444576))

(assert (= (and b!444576 res!263748) b!444586))

(assert (= (and b!444581 condMapEmpty!19353) mapIsEmpty!19353))

(assert (= (and b!444581 (not condMapEmpty!19353)) mapNonEmpty!19353))

(get-info :version)

(assert (= (and mapNonEmpty!19353 ((_ is ValueCellFull!5565) mapValue!19353)) b!444575))

(assert (= (and b!444581 ((_ is ValueCellFull!5565) mapDefault!19353)) b!444578))

(assert (= start!40440 b!444581))

(declare-fun m!430367 () Bool)

(assert (=> b!444583 m!430367))

(declare-fun m!430369 () Bool)

(assert (=> b!444582 m!430369))

(declare-fun m!430371 () Bool)

(assert (=> b!444580 m!430371))

(declare-fun m!430373 () Bool)

(assert (=> b!444584 m!430373))

(declare-fun m!430375 () Bool)

(assert (=> b!444577 m!430375))

(declare-fun m!430377 () Bool)

(assert (=> start!40440 m!430377))

(declare-fun m!430379 () Bool)

(assert (=> start!40440 m!430379))

(declare-fun m!430381 () Bool)

(assert (=> b!444586 m!430381))

(declare-fun m!430383 () Bool)

(assert (=> b!444576 m!430383))

(declare-fun m!430385 () Bool)

(assert (=> b!444576 m!430385))

(declare-fun m!430387 () Bool)

(assert (=> b!444587 m!430387))

(declare-fun m!430389 () Bool)

(assert (=> mapNonEmpty!19353 m!430389))

(check-sat (not b!444582) (not b!444576) (not b!444584) (not start!40440) tp_is_empty!11817 (not b!444587) (not b!444583) (not b!444577) (not mapNonEmpty!19353) (not b!444586))
(check-sat)
