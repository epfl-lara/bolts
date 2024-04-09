; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38960 () Bool)

(assert start!38960)

(declare-fun b!407561 () Bool)

(declare-fun e!244740 () Bool)

(declare-fun tp_is_empty!10371 () Bool)

(assert (=> b!407561 (= e!244740 tp_is_empty!10371)))

(declare-fun b!407562 () Bool)

(declare-fun res!235751 () Bool)

(declare-fun e!244738 () Bool)

(assert (=> b!407562 (=> (not res!235751) (not e!244738))))

(declare-datatypes ((array!24597 0))(
  ( (array!24598 (arr!11745 (Array (_ BitVec 32) (_ BitVec 64))) (size!12097 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24597)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14933 0))(
  ( (V!14934 (val!5230 Int)) )
))
(declare-datatypes ((ValueCell!4842 0))(
  ( (ValueCellFull!4842 (v!7473 V!14933)) (EmptyCell!4842) )
))
(declare-datatypes ((array!24599 0))(
  ( (array!24600 (arr!11746 (Array (_ BitVec 32) ValueCell!4842)) (size!12098 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24599)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!407562 (= res!235751 (and (= (size!12098 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12097 _keys!709) (size!12098 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407563 () Bool)

(declare-fun res!235744 () Bool)

(assert (=> b!407563 (=> (not res!235744) (not e!244738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407563 (= res!235744 (validMask!0 mask!1025))))

(declare-fun res!235750 () Bool)

(assert (=> start!38960 (=> (not res!235750) (not e!244738))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38960 (= res!235750 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12097 _keys!709))))))

(assert (=> start!38960 e!244738))

(assert (=> start!38960 true))

(declare-fun e!244737 () Bool)

(declare-fun array_inv!8578 (array!24599) Bool)

(assert (=> start!38960 (and (array_inv!8578 _values!549) e!244737)))

(declare-fun array_inv!8579 (array!24597) Bool)

(assert (=> start!38960 (array_inv!8579 _keys!709)))

(declare-fun b!407564 () Bool)

(declare-fun res!235748 () Bool)

(assert (=> b!407564 (=> (not res!235748) (not e!244738))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407564 (= res!235748 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12097 _keys!709))))))

(declare-fun b!407565 () Bool)

(declare-fun res!235752 () Bool)

(assert (=> b!407565 (=> (not res!235752) (not e!244738))))

(declare-datatypes ((List!6790 0))(
  ( (Nil!6787) (Cons!6786 (h!7642 (_ BitVec 64)) (t!11972 List!6790)) )
))
(declare-fun arrayNoDuplicates!0 (array!24597 (_ BitVec 32) List!6790) Bool)

(assert (=> b!407565 (= res!235752 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6787))))

(declare-fun mapIsEmpty!17178 () Bool)

(declare-fun mapRes!17178 () Bool)

(assert (=> mapIsEmpty!17178 mapRes!17178))

(declare-fun mapNonEmpty!17178 () Bool)

(declare-fun tp!33297 () Bool)

(assert (=> mapNonEmpty!17178 (= mapRes!17178 (and tp!33297 e!244740))))

(declare-fun mapValue!17178 () ValueCell!4842)

(declare-fun mapKey!17178 () (_ BitVec 32))

(declare-fun mapRest!17178 () (Array (_ BitVec 32) ValueCell!4842))

(assert (=> mapNonEmpty!17178 (= (arr!11746 _values!549) (store mapRest!17178 mapKey!17178 mapValue!17178))))

(declare-fun b!407566 () Bool)

(declare-fun e!244741 () Bool)

(assert (=> b!407566 (= e!244741 false)))

(declare-fun lt!188655 () Bool)

(declare-fun lt!188654 () array!24597)

(assert (=> b!407566 (= lt!188655 (arrayNoDuplicates!0 lt!188654 #b00000000000000000000000000000000 Nil!6787))))

(declare-fun b!407567 () Bool)

(declare-fun e!244736 () Bool)

(assert (=> b!407567 (= e!244737 (and e!244736 mapRes!17178))))

(declare-fun condMapEmpty!17178 () Bool)

(declare-fun mapDefault!17178 () ValueCell!4842)

(assert (=> b!407567 (= condMapEmpty!17178 (= (arr!11746 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4842)) mapDefault!17178)))))

(declare-fun b!407568 () Bool)

(assert (=> b!407568 (= e!244736 tp_is_empty!10371)))

(declare-fun b!407569 () Bool)

(declare-fun res!235749 () Bool)

(assert (=> b!407569 (=> (not res!235749) (not e!244738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24597 (_ BitVec 32)) Bool)

(assert (=> b!407569 (= res!235749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407570 () Bool)

(declare-fun res!235743 () Bool)

(assert (=> b!407570 (=> (not res!235743) (not e!244738))))

(assert (=> b!407570 (= res!235743 (or (= (select (arr!11745 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11745 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407571 () Bool)

(assert (=> b!407571 (= e!244738 e!244741)))

(declare-fun res!235746 () Bool)

(assert (=> b!407571 (=> (not res!235746) (not e!244741))))

(assert (=> b!407571 (= res!235746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188654 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!407571 (= lt!188654 (array!24598 (store (arr!11745 _keys!709) i!563 k0!794) (size!12097 _keys!709)))))

(declare-fun b!407572 () Bool)

(declare-fun res!235747 () Bool)

(assert (=> b!407572 (=> (not res!235747) (not e!244738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407572 (= res!235747 (validKeyInArray!0 k0!794))))

(declare-fun b!407573 () Bool)

(declare-fun res!235745 () Bool)

(assert (=> b!407573 (=> (not res!235745) (not e!244738))))

(declare-fun arrayContainsKey!0 (array!24597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407573 (= res!235745 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!38960 res!235750) b!407563))

(assert (= (and b!407563 res!235744) b!407562))

(assert (= (and b!407562 res!235751) b!407569))

(assert (= (and b!407569 res!235749) b!407565))

(assert (= (and b!407565 res!235752) b!407564))

(assert (= (and b!407564 res!235748) b!407572))

(assert (= (and b!407572 res!235747) b!407570))

(assert (= (and b!407570 res!235743) b!407573))

(assert (= (and b!407573 res!235745) b!407571))

(assert (= (and b!407571 res!235746) b!407566))

(assert (= (and b!407567 condMapEmpty!17178) mapIsEmpty!17178))

(assert (= (and b!407567 (not condMapEmpty!17178)) mapNonEmpty!17178))

(get-info :version)

(assert (= (and mapNonEmpty!17178 ((_ is ValueCellFull!4842) mapValue!17178)) b!407561))

(assert (= (and b!407567 ((_ is ValueCellFull!4842) mapDefault!17178)) b!407568))

(assert (= start!38960 b!407567))

(declare-fun m!399165 () Bool)

(assert (=> b!407569 m!399165))

(declare-fun m!399167 () Bool)

(assert (=> b!407566 m!399167))

(declare-fun m!399169 () Bool)

(assert (=> start!38960 m!399169))

(declare-fun m!399171 () Bool)

(assert (=> start!38960 m!399171))

(declare-fun m!399173 () Bool)

(assert (=> b!407570 m!399173))

(declare-fun m!399175 () Bool)

(assert (=> b!407572 m!399175))

(declare-fun m!399177 () Bool)

(assert (=> b!407571 m!399177))

(declare-fun m!399179 () Bool)

(assert (=> b!407571 m!399179))

(declare-fun m!399181 () Bool)

(assert (=> b!407573 m!399181))

(declare-fun m!399183 () Bool)

(assert (=> mapNonEmpty!17178 m!399183))

(declare-fun m!399185 () Bool)

(assert (=> b!407563 m!399185))

(declare-fun m!399187 () Bool)

(assert (=> b!407565 m!399187))

(check-sat (not start!38960) (not b!407566) (not b!407569) (not b!407572) (not mapNonEmpty!17178) (not b!407565) (not b!407573) (not b!407571) (not b!407563) tp_is_empty!10371)
(check-sat)
