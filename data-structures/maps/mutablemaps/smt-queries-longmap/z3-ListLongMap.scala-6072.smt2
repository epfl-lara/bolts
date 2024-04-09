; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78570 () Bool)

(assert start!78570)

(declare-fun b!915421 () Bool)

(declare-fun e!513833 () Bool)

(declare-fun tp_is_empty!19263 () Bool)

(assert (=> b!915421 (= e!513833 tp_is_empty!19263)))

(declare-fun b!915422 () Bool)

(declare-fun e!513830 () Bool)

(assert (=> b!915422 (= e!513830 tp_is_empty!19263)))

(declare-fun b!915423 () Bool)

(declare-fun res!617286 () Bool)

(declare-fun e!513832 () Bool)

(assert (=> b!915423 (=> (not res!617286) (not e!513832))))

(declare-datatypes ((array!54530 0))(
  ( (array!54531 (arr!26206 (Array (_ BitVec 32) (_ BitVec 64))) (size!26666 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54530)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54530 (_ BitVec 32)) Bool)

(assert (=> b!915423 (= res!617286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!30651 () Bool)

(declare-fun mapRes!30651 () Bool)

(assert (=> mapIsEmpty!30651 mapRes!30651))

(declare-fun b!915424 () Bool)

(assert (=> b!915424 (= e!513832 false)))

(declare-fun lt!411639 () Bool)

(declare-datatypes ((List!18487 0))(
  ( (Nil!18484) (Cons!18483 (h!19629 (_ BitVec 64)) (t!26108 List!18487)) )
))
(declare-fun arrayNoDuplicates!0 (array!54530 (_ BitVec 32) List!18487) Bool)

(assert (=> b!915424 (= lt!411639 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18484))))

(declare-fun b!915425 () Bool)

(declare-fun res!617287 () Bool)

(assert (=> b!915425 (=> (not res!617287) (not e!513832))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30649 0))(
  ( (V!30650 (val!9682 Int)) )
))
(declare-datatypes ((ValueCell!9150 0))(
  ( (ValueCellFull!9150 (v!12200 V!30649)) (EmptyCell!9150) )
))
(declare-datatypes ((array!54532 0))(
  ( (array!54533 (arr!26207 (Array (_ BitVec 32) ValueCell!9150)) (size!26667 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54532)

(assert (=> b!915425 (= res!617287 (and (= (size!26667 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26666 _keys!1487) (size!26667 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30651 () Bool)

(declare-fun tp!58719 () Bool)

(assert (=> mapNonEmpty!30651 (= mapRes!30651 (and tp!58719 e!513833))))

(declare-fun mapKey!30651 () (_ BitVec 32))

(declare-fun mapRest!30651 () (Array (_ BitVec 32) ValueCell!9150))

(declare-fun mapValue!30651 () ValueCell!9150)

(assert (=> mapNonEmpty!30651 (= (arr!26207 _values!1231) (store mapRest!30651 mapKey!30651 mapValue!30651))))

(declare-fun b!915420 () Bool)

(declare-fun e!513831 () Bool)

(assert (=> b!915420 (= e!513831 (and e!513830 mapRes!30651))))

(declare-fun condMapEmpty!30651 () Bool)

(declare-fun mapDefault!30651 () ValueCell!9150)

(assert (=> b!915420 (= condMapEmpty!30651 (= (arr!26207 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9150)) mapDefault!30651)))))

(declare-fun res!617288 () Bool)

(assert (=> start!78570 (=> (not res!617288) (not e!513832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78570 (= res!617288 (validMask!0 mask!1881))))

(assert (=> start!78570 e!513832))

(assert (=> start!78570 true))

(declare-fun array_inv!20442 (array!54532) Bool)

(assert (=> start!78570 (and (array_inv!20442 _values!1231) e!513831)))

(declare-fun array_inv!20443 (array!54530) Bool)

(assert (=> start!78570 (array_inv!20443 _keys!1487)))

(assert (= (and start!78570 res!617288) b!915425))

(assert (= (and b!915425 res!617287) b!915423))

(assert (= (and b!915423 res!617286) b!915424))

(assert (= (and b!915420 condMapEmpty!30651) mapIsEmpty!30651))

(assert (= (and b!915420 (not condMapEmpty!30651)) mapNonEmpty!30651))

(get-info :version)

(assert (= (and mapNonEmpty!30651 ((_ is ValueCellFull!9150) mapValue!30651)) b!915421))

(assert (= (and b!915420 ((_ is ValueCellFull!9150) mapDefault!30651)) b!915422))

(assert (= start!78570 b!915420))

(declare-fun m!849859 () Bool)

(assert (=> b!915423 m!849859))

(declare-fun m!849861 () Bool)

(assert (=> b!915424 m!849861))

(declare-fun m!849863 () Bool)

(assert (=> mapNonEmpty!30651 m!849863))

(declare-fun m!849865 () Bool)

(assert (=> start!78570 m!849865))

(declare-fun m!849867 () Bool)

(assert (=> start!78570 m!849867))

(declare-fun m!849869 () Bool)

(assert (=> start!78570 m!849869))

(check-sat (not b!915423) (not b!915424) (not start!78570) tp_is_empty!19263 (not mapNonEmpty!30651))
(check-sat)
