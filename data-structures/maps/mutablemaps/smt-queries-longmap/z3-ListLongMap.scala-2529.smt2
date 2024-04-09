; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39002 () Bool)

(assert start!39002)

(declare-fun b!408380 () Bool)

(declare-fun res!236382 () Bool)

(declare-fun e!245119 () Bool)

(assert (=> b!408380 (=> (not res!236382) (not e!245119))))

(declare-datatypes ((array!24681 0))(
  ( (array!24682 (arr!11787 (Array (_ BitVec 32) (_ BitVec 64))) (size!12139 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24681)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14989 0))(
  ( (V!14990 (val!5251 Int)) )
))
(declare-datatypes ((ValueCell!4863 0))(
  ( (ValueCellFull!4863 (v!7494 V!14989)) (EmptyCell!4863) )
))
(declare-datatypes ((array!24683 0))(
  ( (array!24684 (arr!11788 (Array (_ BitVec 32) ValueCell!4863)) (size!12140 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24683)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!408380 (= res!236382 (and (= (size!12140 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12139 _keys!709) (size!12140 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408381 () Bool)

(declare-fun res!236378 () Bool)

(assert (=> b!408381 (=> (not res!236378) (not e!245119))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408381 (= res!236378 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408382 () Bool)

(declare-fun e!245115 () Bool)

(declare-fun e!245117 () Bool)

(declare-fun mapRes!17241 () Bool)

(assert (=> b!408382 (= e!245115 (and e!245117 mapRes!17241))))

(declare-fun condMapEmpty!17241 () Bool)

(declare-fun mapDefault!17241 () ValueCell!4863)

(assert (=> b!408382 (= condMapEmpty!17241 (= (arr!11788 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4863)) mapDefault!17241)))))

(declare-fun b!408383 () Bool)

(declare-fun res!236381 () Bool)

(assert (=> b!408383 (=> (not res!236381) (not e!245119))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408383 (= res!236381 (or (= (select (arr!11787 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11787 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!408384 () Bool)

(declare-fun res!236376 () Bool)

(assert (=> b!408384 (=> (not res!236376) (not e!245119))))

(declare-datatypes ((List!6809 0))(
  ( (Nil!6806) (Cons!6805 (h!7661 (_ BitVec 64)) (t!11991 List!6809)) )
))
(declare-fun arrayNoDuplicates!0 (array!24681 (_ BitVec 32) List!6809) Bool)

(assert (=> b!408384 (= res!236376 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6806))))

(declare-fun b!408385 () Bool)

(declare-fun e!245118 () Bool)

(declare-fun tp_is_empty!10413 () Bool)

(assert (=> b!408385 (= e!245118 tp_is_empty!10413)))

(declare-fun b!408386 () Bool)

(declare-fun res!236374 () Bool)

(assert (=> b!408386 (=> (not res!236374) (not e!245119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408386 (= res!236374 (validKeyInArray!0 k0!794))))

(declare-fun b!408387 () Bool)

(declare-fun res!236377 () Bool)

(assert (=> b!408387 (=> (not res!236377) (not e!245119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408387 (= res!236377 (validMask!0 mask!1025))))

(declare-fun res!236373 () Bool)

(assert (=> start!39002 (=> (not res!236373) (not e!245119))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39002 (= res!236373 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12139 _keys!709))))))

(assert (=> start!39002 e!245119))

(assert (=> start!39002 true))

(declare-fun array_inv!8610 (array!24683) Bool)

(assert (=> start!39002 (and (array_inv!8610 _values!549) e!245115)))

(declare-fun array_inv!8611 (array!24681) Bool)

(assert (=> start!39002 (array_inv!8611 _keys!709)))

(declare-fun mapNonEmpty!17241 () Bool)

(declare-fun tp!33360 () Bool)

(assert (=> mapNonEmpty!17241 (= mapRes!17241 (and tp!33360 e!245118))))

(declare-fun mapValue!17241 () ValueCell!4863)

(declare-fun mapKey!17241 () (_ BitVec 32))

(declare-fun mapRest!17241 () (Array (_ BitVec 32) ValueCell!4863))

(assert (=> mapNonEmpty!17241 (= (arr!11788 _values!549) (store mapRest!17241 mapKey!17241 mapValue!17241))))

(declare-fun b!408388 () Bool)

(declare-fun res!236380 () Bool)

(assert (=> b!408388 (=> (not res!236380) (not e!245119))))

(assert (=> b!408388 (= res!236380 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12139 _keys!709))))))

(declare-fun b!408389 () Bool)

(declare-fun res!236375 () Bool)

(assert (=> b!408389 (=> (not res!236375) (not e!245119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24681 (_ BitVec 32)) Bool)

(assert (=> b!408389 (= res!236375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408390 () Bool)

(declare-fun e!245114 () Bool)

(assert (=> b!408390 (= e!245119 e!245114)))

(declare-fun res!236379 () Bool)

(assert (=> b!408390 (=> (not res!236379) (not e!245114))))

(declare-fun lt!188781 () array!24681)

(assert (=> b!408390 (= res!236379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188781 mask!1025))))

(assert (=> b!408390 (= lt!188781 (array!24682 (store (arr!11787 _keys!709) i!563 k0!794) (size!12139 _keys!709)))))

(declare-fun b!408391 () Bool)

(assert (=> b!408391 (= e!245117 tp_is_empty!10413)))

(declare-fun mapIsEmpty!17241 () Bool)

(assert (=> mapIsEmpty!17241 mapRes!17241))

(declare-fun b!408392 () Bool)

(assert (=> b!408392 (= e!245114 false)))

(declare-fun lt!188780 () Bool)

(assert (=> b!408392 (= lt!188780 (arrayNoDuplicates!0 lt!188781 #b00000000000000000000000000000000 Nil!6806))))

(assert (= (and start!39002 res!236373) b!408387))

(assert (= (and b!408387 res!236377) b!408380))

(assert (= (and b!408380 res!236382) b!408389))

(assert (= (and b!408389 res!236375) b!408384))

(assert (= (and b!408384 res!236376) b!408388))

(assert (= (and b!408388 res!236380) b!408386))

(assert (= (and b!408386 res!236374) b!408383))

(assert (= (and b!408383 res!236381) b!408381))

(assert (= (and b!408381 res!236378) b!408390))

(assert (= (and b!408390 res!236379) b!408392))

(assert (= (and b!408382 condMapEmpty!17241) mapIsEmpty!17241))

(assert (= (and b!408382 (not condMapEmpty!17241)) mapNonEmpty!17241))

(get-info :version)

(assert (= (and mapNonEmpty!17241 ((_ is ValueCellFull!4863) mapValue!17241)) b!408385))

(assert (= (and b!408382 ((_ is ValueCellFull!4863) mapDefault!17241)) b!408391))

(assert (= start!39002 b!408382))

(declare-fun m!399669 () Bool)

(assert (=> b!408390 m!399669))

(declare-fun m!399671 () Bool)

(assert (=> b!408390 m!399671))

(declare-fun m!399673 () Bool)

(assert (=> b!408389 m!399673))

(declare-fun m!399675 () Bool)

(assert (=> b!408392 m!399675))

(declare-fun m!399677 () Bool)

(assert (=> b!408383 m!399677))

(declare-fun m!399679 () Bool)

(assert (=> mapNonEmpty!17241 m!399679))

(declare-fun m!399681 () Bool)

(assert (=> b!408386 m!399681))

(declare-fun m!399683 () Bool)

(assert (=> b!408384 m!399683))

(declare-fun m!399685 () Bool)

(assert (=> start!39002 m!399685))

(declare-fun m!399687 () Bool)

(assert (=> start!39002 m!399687))

(declare-fun m!399689 () Bool)

(assert (=> b!408381 m!399689))

(declare-fun m!399691 () Bool)

(assert (=> b!408387 m!399691))

(check-sat (not b!408381) (not b!408390) (not start!39002) (not b!408387) (not b!408389) (not mapNonEmpty!17241) (not b!408384) (not b!408392) tp_is_empty!10413 (not b!408386))
(check-sat)
