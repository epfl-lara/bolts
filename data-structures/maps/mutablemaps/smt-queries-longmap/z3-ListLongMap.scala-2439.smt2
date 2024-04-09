; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38462 () Bool)

(assert start!38462)

(declare-fun b!396554 () Bool)

(declare-fun e!239930 () Bool)

(declare-fun tp_is_empty!9873 () Bool)

(assert (=> b!396554 (= e!239930 tp_is_empty!9873)))

(declare-fun mapNonEmpty!16431 () Bool)

(declare-fun mapRes!16431 () Bool)

(declare-fun tp!32226 () Bool)

(assert (=> mapNonEmpty!16431 (= mapRes!16431 (and tp!32226 e!239930))))

(declare-datatypes ((V!14269 0))(
  ( (V!14270 (val!4981 Int)) )
))
(declare-datatypes ((ValueCell!4593 0))(
  ( (ValueCellFull!4593 (v!7224 V!14269)) (EmptyCell!4593) )
))
(declare-fun mapValue!16431 () ValueCell!4593)

(declare-fun mapKey!16431 () (_ BitVec 32))

(declare-datatypes ((array!23633 0))(
  ( (array!23634 (arr!11263 (Array (_ BitVec 32) ValueCell!4593)) (size!11615 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23633)

(declare-fun mapRest!16431 () (Array (_ BitVec 32) ValueCell!4593))

(assert (=> mapNonEmpty!16431 (= (arr!11263 _values!549) (store mapRest!16431 mapKey!16431 mapValue!16431))))

(declare-fun b!396555 () Bool)

(declare-fun res!227627 () Bool)

(declare-fun e!239931 () Bool)

(assert (=> b!396555 (=> (not res!227627) (not e!239931))))

(declare-datatypes ((array!23635 0))(
  ( (array!23636 (arr!11264 (Array (_ BitVec 32) (_ BitVec 64))) (size!11616 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23635)

(declare-datatypes ((List!6498 0))(
  ( (Nil!6495) (Cons!6494 (h!7350 (_ BitVec 64)) (t!11680 List!6498)) )
))
(declare-fun arrayNoDuplicates!0 (array!23635 (_ BitVec 32) List!6498) Bool)

(assert (=> b!396555 (= res!227627 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6495))))

(declare-fun b!396556 () Bool)

(declare-fun e!239932 () Bool)

(assert (=> b!396556 (= e!239931 e!239932)))

(declare-fun res!227631 () Bool)

(assert (=> b!396556 (=> (not res!227631) (not e!239932))))

(declare-fun lt!187160 () array!23635)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23635 (_ BitVec 32)) Bool)

(assert (=> b!396556 (= res!227631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187160 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396556 (= lt!187160 (array!23636 (store (arr!11264 _keys!709) i!563 k0!794) (size!11616 _keys!709)))))

(declare-fun b!396557 () Bool)

(declare-fun res!227625 () Bool)

(assert (=> b!396557 (=> (not res!227625) (not e!239931))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!396557 (= res!227625 (and (= (size!11615 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11616 _keys!709) (size!11615 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16431 () Bool)

(assert (=> mapIsEmpty!16431 mapRes!16431))

(declare-fun b!396558 () Bool)

(declare-fun res!227628 () Bool)

(assert (=> b!396558 (=> (not res!227628) (not e!239931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396558 (= res!227628 (validKeyInArray!0 k0!794))))

(declare-fun b!396559 () Bool)

(declare-fun res!227633 () Bool)

(assert (=> b!396559 (=> (not res!227633) (not e!239931))))

(assert (=> b!396559 (= res!227633 (or (= (select (arr!11264 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11264 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396560 () Bool)

(declare-fun e!239933 () Bool)

(declare-fun e!239935 () Bool)

(assert (=> b!396560 (= e!239933 (and e!239935 mapRes!16431))))

(declare-fun condMapEmpty!16431 () Bool)

(declare-fun mapDefault!16431 () ValueCell!4593)

(assert (=> b!396560 (= condMapEmpty!16431 (= (arr!11263 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4593)) mapDefault!16431)))))

(declare-fun b!396561 () Bool)

(assert (=> b!396561 (= e!239935 tp_is_empty!9873)))

(declare-fun b!396562 () Bool)

(declare-fun res!227632 () Bool)

(assert (=> b!396562 (=> (not res!227632) (not e!239931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396562 (= res!227632 (validMask!0 mask!1025))))

(declare-fun res!227634 () Bool)

(assert (=> start!38462 (=> (not res!227634) (not e!239931))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38462 (= res!227634 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11616 _keys!709))))))

(assert (=> start!38462 e!239931))

(assert (=> start!38462 true))

(declare-fun array_inv!8248 (array!23633) Bool)

(assert (=> start!38462 (and (array_inv!8248 _values!549) e!239933)))

(declare-fun array_inv!8249 (array!23635) Bool)

(assert (=> start!38462 (array_inv!8249 _keys!709)))

(declare-fun b!396563 () Bool)

(declare-fun res!227626 () Bool)

(assert (=> b!396563 (=> (not res!227626) (not e!239931))))

(assert (=> b!396563 (= res!227626 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11616 _keys!709))))))

(declare-fun b!396564 () Bool)

(declare-fun res!227629 () Bool)

(assert (=> b!396564 (=> (not res!227629) (not e!239931))))

(declare-fun arrayContainsKey!0 (array!23635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396564 (= res!227629 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!396565 () Bool)

(assert (=> b!396565 (= e!239932 false)))

(declare-fun lt!187161 () Bool)

(assert (=> b!396565 (= lt!187161 (arrayNoDuplicates!0 lt!187160 #b00000000000000000000000000000000 Nil!6495))))

(declare-fun b!396566 () Bool)

(declare-fun res!227630 () Bool)

(assert (=> b!396566 (=> (not res!227630) (not e!239931))))

(assert (=> b!396566 (= res!227630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!38462 res!227634) b!396562))

(assert (= (and b!396562 res!227632) b!396557))

(assert (= (and b!396557 res!227625) b!396566))

(assert (= (and b!396566 res!227630) b!396555))

(assert (= (and b!396555 res!227627) b!396563))

(assert (= (and b!396563 res!227626) b!396558))

(assert (= (and b!396558 res!227628) b!396559))

(assert (= (and b!396559 res!227633) b!396564))

(assert (= (and b!396564 res!227629) b!396556))

(assert (= (and b!396556 res!227631) b!396565))

(assert (= (and b!396560 condMapEmpty!16431) mapIsEmpty!16431))

(assert (= (and b!396560 (not condMapEmpty!16431)) mapNonEmpty!16431))

(get-info :version)

(assert (= (and mapNonEmpty!16431 ((_ is ValueCellFull!4593) mapValue!16431)) b!396554))

(assert (= (and b!396560 ((_ is ValueCellFull!4593) mapDefault!16431)) b!396561))

(assert (= start!38462 b!396560))

(declare-fun m!392109 () Bool)

(assert (=> b!396558 m!392109))

(declare-fun m!392111 () Bool)

(assert (=> b!396564 m!392111))

(declare-fun m!392113 () Bool)

(assert (=> b!396562 m!392113))

(declare-fun m!392115 () Bool)

(assert (=> b!396565 m!392115))

(declare-fun m!392117 () Bool)

(assert (=> b!396566 m!392117))

(declare-fun m!392119 () Bool)

(assert (=> start!38462 m!392119))

(declare-fun m!392121 () Bool)

(assert (=> start!38462 m!392121))

(declare-fun m!392123 () Bool)

(assert (=> b!396555 m!392123))

(declare-fun m!392125 () Bool)

(assert (=> b!396559 m!392125))

(declare-fun m!392127 () Bool)

(assert (=> b!396556 m!392127))

(declare-fun m!392129 () Bool)

(assert (=> b!396556 m!392129))

(declare-fun m!392131 () Bool)

(assert (=> mapNonEmpty!16431 m!392131))

(check-sat (not mapNonEmpty!16431) (not b!396555) (not b!396558) (not b!396566) (not start!38462) (not b!396556) (not b!396564) (not b!396565) tp_is_empty!9873 (not b!396562))
(check-sat)
