; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38936 () Bool)

(assert start!38936)

(declare-fun b!407093 () Bool)

(declare-fun e!244522 () Bool)

(declare-fun e!244521 () Bool)

(declare-fun mapRes!17142 () Bool)

(assert (=> b!407093 (= e!244522 (and e!244521 mapRes!17142))))

(declare-fun condMapEmpty!17142 () Bool)

(declare-datatypes ((V!14901 0))(
  ( (V!14902 (val!5218 Int)) )
))
(declare-datatypes ((ValueCell!4830 0))(
  ( (ValueCellFull!4830 (v!7461 V!14901)) (EmptyCell!4830) )
))
(declare-datatypes ((array!24549 0))(
  ( (array!24550 (arr!11721 (Array (_ BitVec 32) ValueCell!4830)) (size!12073 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24549)

(declare-fun mapDefault!17142 () ValueCell!4830)

(assert (=> b!407093 (= condMapEmpty!17142 (= (arr!11721 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4830)) mapDefault!17142)))))

(declare-fun res!235387 () Bool)

(declare-fun e!244524 () Bool)

(assert (=> start!38936 (=> (not res!235387) (not e!244524))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24551 0))(
  ( (array!24552 (arr!11722 (Array (_ BitVec 32) (_ BitVec 64))) (size!12074 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24551)

(assert (=> start!38936 (= res!235387 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12074 _keys!709))))))

(assert (=> start!38936 e!244524))

(assert (=> start!38936 true))

(declare-fun array_inv!8562 (array!24549) Bool)

(assert (=> start!38936 (and (array_inv!8562 _values!549) e!244522)))

(declare-fun array_inv!8563 (array!24551) Bool)

(assert (=> start!38936 (array_inv!8563 _keys!709)))

(declare-fun b!407094 () Bool)

(declare-fun res!235390 () Bool)

(assert (=> b!407094 (=> (not res!235390) (not e!244524))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407094 (= res!235390 (validMask!0 mask!1025))))

(declare-fun b!407095 () Bool)

(declare-fun res!235384 () Bool)

(assert (=> b!407095 (=> (not res!235384) (not e!244524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24551 (_ BitVec 32)) Bool)

(assert (=> b!407095 (= res!235384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407096 () Bool)

(declare-fun e!244525 () Bool)

(declare-fun tp_is_empty!10347 () Bool)

(assert (=> b!407096 (= e!244525 tp_is_empty!10347)))

(declare-fun b!407097 () Bool)

(declare-fun res!235392 () Bool)

(assert (=> b!407097 (=> (not res!235392) (not e!244524))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407097 (= res!235392 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407098 () Bool)

(declare-fun e!244520 () Bool)

(assert (=> b!407098 (= e!244524 e!244520)))

(declare-fun res!235389 () Bool)

(assert (=> b!407098 (=> (not res!235389) (not e!244520))))

(declare-fun lt!188583 () array!24551)

(assert (=> b!407098 (= res!235389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188583 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407098 (= lt!188583 (array!24552 (store (arr!11722 _keys!709) i!563 k0!794) (size!12074 _keys!709)))))

(declare-fun b!407099 () Bool)

(declare-fun res!235388 () Bool)

(assert (=> b!407099 (=> (not res!235388) (not e!244524))))

(assert (=> b!407099 (= res!235388 (or (= (select (arr!11722 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11722 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407100 () Bool)

(declare-fun res!235391 () Bool)

(assert (=> b!407100 (=> (not res!235391) (not e!244524))))

(assert (=> b!407100 (= res!235391 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12074 _keys!709))))))

(declare-fun b!407101 () Bool)

(declare-fun res!235385 () Bool)

(assert (=> b!407101 (=> (not res!235385) (not e!244524))))

(declare-datatypes ((List!6780 0))(
  ( (Nil!6777) (Cons!6776 (h!7632 (_ BitVec 64)) (t!11962 List!6780)) )
))
(declare-fun arrayNoDuplicates!0 (array!24551 (_ BitVec 32) List!6780) Bool)

(assert (=> b!407101 (= res!235385 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6777))))

(declare-fun b!407102 () Bool)

(assert (=> b!407102 (= e!244521 tp_is_empty!10347)))

(declare-fun mapIsEmpty!17142 () Bool)

(assert (=> mapIsEmpty!17142 mapRes!17142))

(declare-fun b!407103 () Bool)

(declare-fun res!235383 () Bool)

(assert (=> b!407103 (=> (not res!235383) (not e!244524))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407103 (= res!235383 (and (= (size!12073 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12074 _keys!709) (size!12073 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17142 () Bool)

(declare-fun tp!33261 () Bool)

(assert (=> mapNonEmpty!17142 (= mapRes!17142 (and tp!33261 e!244525))))

(declare-fun mapValue!17142 () ValueCell!4830)

(declare-fun mapRest!17142 () (Array (_ BitVec 32) ValueCell!4830))

(declare-fun mapKey!17142 () (_ BitVec 32))

(assert (=> mapNonEmpty!17142 (= (arr!11721 _values!549) (store mapRest!17142 mapKey!17142 mapValue!17142))))

(declare-fun b!407104 () Bool)

(declare-fun res!235386 () Bool)

(assert (=> b!407104 (=> (not res!235386) (not e!244524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407104 (= res!235386 (validKeyInArray!0 k0!794))))

(declare-fun b!407105 () Bool)

(assert (=> b!407105 (= e!244520 false)))

(declare-fun lt!188582 () Bool)

(assert (=> b!407105 (= lt!188582 (arrayNoDuplicates!0 lt!188583 #b00000000000000000000000000000000 Nil!6777))))

(assert (= (and start!38936 res!235387) b!407094))

(assert (= (and b!407094 res!235390) b!407103))

(assert (= (and b!407103 res!235383) b!407095))

(assert (= (and b!407095 res!235384) b!407101))

(assert (= (and b!407101 res!235385) b!407100))

(assert (= (and b!407100 res!235391) b!407104))

(assert (= (and b!407104 res!235386) b!407099))

(assert (= (and b!407099 res!235388) b!407097))

(assert (= (and b!407097 res!235392) b!407098))

(assert (= (and b!407098 res!235389) b!407105))

(assert (= (and b!407093 condMapEmpty!17142) mapIsEmpty!17142))

(assert (= (and b!407093 (not condMapEmpty!17142)) mapNonEmpty!17142))

(get-info :version)

(assert (= (and mapNonEmpty!17142 ((_ is ValueCellFull!4830) mapValue!17142)) b!407096))

(assert (= (and b!407093 ((_ is ValueCellFull!4830) mapDefault!17142)) b!407102))

(assert (= start!38936 b!407093))

(declare-fun m!398877 () Bool)

(assert (=> start!38936 m!398877))

(declare-fun m!398879 () Bool)

(assert (=> start!38936 m!398879))

(declare-fun m!398881 () Bool)

(assert (=> mapNonEmpty!17142 m!398881))

(declare-fun m!398883 () Bool)

(assert (=> b!407104 m!398883))

(declare-fun m!398885 () Bool)

(assert (=> b!407098 m!398885))

(declare-fun m!398887 () Bool)

(assert (=> b!407098 m!398887))

(declare-fun m!398889 () Bool)

(assert (=> b!407097 m!398889))

(declare-fun m!398891 () Bool)

(assert (=> b!407095 m!398891))

(declare-fun m!398893 () Bool)

(assert (=> b!407094 m!398893))

(declare-fun m!398895 () Bool)

(assert (=> b!407099 m!398895))

(declare-fun m!398897 () Bool)

(assert (=> b!407105 m!398897))

(declare-fun m!398899 () Bool)

(assert (=> b!407101 m!398899))

(check-sat (not b!407094) (not b!407098) (not b!407104) (not b!407105) (not mapNonEmpty!17142) (not b!407097) (not b!407095) (not b!407101) (not start!38936) tp_is_empty!10347)
(check-sat)
