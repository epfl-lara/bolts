; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38972 () Bool)

(assert start!38972)

(declare-fun mapIsEmpty!17196 () Bool)

(declare-fun mapRes!17196 () Bool)

(assert (=> mapIsEmpty!17196 mapRes!17196))

(declare-fun b!407795 () Bool)

(declare-fun res!235923 () Bool)

(declare-fun e!244847 () Bool)

(assert (=> b!407795 (=> (not res!235923) (not e!244847))))

(declare-datatypes ((array!24621 0))(
  ( (array!24622 (arr!11757 (Array (_ BitVec 32) (_ BitVec 64))) (size!12109 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24621)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14949 0))(
  ( (V!14950 (val!5236 Int)) )
))
(declare-datatypes ((ValueCell!4848 0))(
  ( (ValueCellFull!4848 (v!7479 V!14949)) (EmptyCell!4848) )
))
(declare-datatypes ((array!24623 0))(
  ( (array!24624 (arr!11758 (Array (_ BitVec 32) ValueCell!4848)) (size!12110 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24623)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!407795 (= res!235923 (and (= (size!12110 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12109 _keys!709) (size!12110 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407796 () Bool)

(declare-fun res!235932 () Bool)

(assert (=> b!407796 (=> (not res!235932) (not e!244847))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407796 (= res!235932 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12109 _keys!709))))))

(declare-fun b!407797 () Bool)

(declare-fun e!244848 () Bool)

(assert (=> b!407797 (= e!244848 false)))

(declare-fun lt!188690 () Bool)

(declare-fun lt!188691 () array!24621)

(declare-datatypes ((List!6795 0))(
  ( (Nil!6792) (Cons!6791 (h!7647 (_ BitVec 64)) (t!11977 List!6795)) )
))
(declare-fun arrayNoDuplicates!0 (array!24621 (_ BitVec 32) List!6795) Bool)

(assert (=> b!407797 (= lt!188690 (arrayNoDuplicates!0 lt!188691 #b00000000000000000000000000000000 Nil!6792))))

(declare-fun b!407798 () Bool)

(declare-fun res!235927 () Bool)

(assert (=> b!407798 (=> (not res!235927) (not e!244847))))

(assert (=> b!407798 (= res!235927 (or (= (select (arr!11757 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11757 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407799 () Bool)

(declare-fun res!235926 () Bool)

(assert (=> b!407799 (=> (not res!235926) (not e!244847))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407799 (= res!235926 (validKeyInArray!0 k0!794))))

(declare-fun b!407800 () Bool)

(declare-fun res!235929 () Bool)

(assert (=> b!407800 (=> (not res!235929) (not e!244847))))

(assert (=> b!407800 (= res!235929 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6792))))

(declare-fun b!407801 () Bool)

(declare-fun res!235928 () Bool)

(assert (=> b!407801 (=> (not res!235928) (not e!244847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24621 (_ BitVec 32)) Bool)

(assert (=> b!407801 (= res!235928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17196 () Bool)

(declare-fun tp!33315 () Bool)

(declare-fun e!244849 () Bool)

(assert (=> mapNonEmpty!17196 (= mapRes!17196 (and tp!33315 e!244849))))

(declare-fun mapValue!17196 () ValueCell!4848)

(declare-fun mapRest!17196 () (Array (_ BitVec 32) ValueCell!4848))

(declare-fun mapKey!17196 () (_ BitVec 32))

(assert (=> mapNonEmpty!17196 (= (arr!11758 _values!549) (store mapRest!17196 mapKey!17196 mapValue!17196))))

(declare-fun res!235924 () Bool)

(assert (=> start!38972 (=> (not res!235924) (not e!244847))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38972 (= res!235924 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12109 _keys!709))))))

(assert (=> start!38972 e!244847))

(assert (=> start!38972 true))

(declare-fun e!244845 () Bool)

(declare-fun array_inv!8584 (array!24623) Bool)

(assert (=> start!38972 (and (array_inv!8584 _values!549) e!244845)))

(declare-fun array_inv!8585 (array!24621) Bool)

(assert (=> start!38972 (array_inv!8585 _keys!709)))

(declare-fun b!407802 () Bool)

(declare-fun tp_is_empty!10383 () Bool)

(assert (=> b!407802 (= e!244849 tp_is_empty!10383)))

(declare-fun b!407803 () Bool)

(assert (=> b!407803 (= e!244847 e!244848)))

(declare-fun res!235931 () Bool)

(assert (=> b!407803 (=> (not res!235931) (not e!244848))))

(assert (=> b!407803 (= res!235931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188691 mask!1025))))

(assert (=> b!407803 (= lt!188691 (array!24622 (store (arr!11757 _keys!709) i!563 k0!794) (size!12109 _keys!709)))))

(declare-fun b!407804 () Bool)

(declare-fun e!244844 () Bool)

(assert (=> b!407804 (= e!244844 tp_is_empty!10383)))

(declare-fun b!407805 () Bool)

(assert (=> b!407805 (= e!244845 (and e!244844 mapRes!17196))))

(declare-fun condMapEmpty!17196 () Bool)

(declare-fun mapDefault!17196 () ValueCell!4848)

(assert (=> b!407805 (= condMapEmpty!17196 (= (arr!11758 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4848)) mapDefault!17196)))))

(declare-fun b!407806 () Bool)

(declare-fun res!235925 () Bool)

(assert (=> b!407806 (=> (not res!235925) (not e!244847))))

(declare-fun arrayContainsKey!0 (array!24621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407806 (= res!235925 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407807 () Bool)

(declare-fun res!235930 () Bool)

(assert (=> b!407807 (=> (not res!235930) (not e!244847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407807 (= res!235930 (validMask!0 mask!1025))))

(assert (= (and start!38972 res!235924) b!407807))

(assert (= (and b!407807 res!235930) b!407795))

(assert (= (and b!407795 res!235923) b!407801))

(assert (= (and b!407801 res!235928) b!407800))

(assert (= (and b!407800 res!235929) b!407796))

(assert (= (and b!407796 res!235932) b!407799))

(assert (= (and b!407799 res!235926) b!407798))

(assert (= (and b!407798 res!235927) b!407806))

(assert (= (and b!407806 res!235925) b!407803))

(assert (= (and b!407803 res!235931) b!407797))

(assert (= (and b!407805 condMapEmpty!17196) mapIsEmpty!17196))

(assert (= (and b!407805 (not condMapEmpty!17196)) mapNonEmpty!17196))

(get-info :version)

(assert (= (and mapNonEmpty!17196 ((_ is ValueCellFull!4848) mapValue!17196)) b!407802))

(assert (= (and b!407805 ((_ is ValueCellFull!4848) mapDefault!17196)) b!407804))

(assert (= start!38972 b!407805))

(declare-fun m!399309 () Bool)

(assert (=> b!407797 m!399309))

(declare-fun m!399311 () Bool)

(assert (=> b!407803 m!399311))

(declare-fun m!399313 () Bool)

(assert (=> b!407803 m!399313))

(declare-fun m!399315 () Bool)

(assert (=> b!407807 m!399315))

(declare-fun m!399317 () Bool)

(assert (=> b!407799 m!399317))

(declare-fun m!399319 () Bool)

(assert (=> start!38972 m!399319))

(declare-fun m!399321 () Bool)

(assert (=> start!38972 m!399321))

(declare-fun m!399323 () Bool)

(assert (=> b!407806 m!399323))

(declare-fun m!399325 () Bool)

(assert (=> b!407800 m!399325))

(declare-fun m!399327 () Bool)

(assert (=> b!407801 m!399327))

(declare-fun m!399329 () Bool)

(assert (=> b!407798 m!399329))

(declare-fun m!399331 () Bool)

(assert (=> mapNonEmpty!17196 m!399331))

(check-sat (not b!407797) (not b!407807) (not b!407801) (not b!407800) (not b!407799) (not b!407803) (not mapNonEmpty!17196) (not b!407806) tp_is_empty!10383 (not start!38972))
(check-sat)
