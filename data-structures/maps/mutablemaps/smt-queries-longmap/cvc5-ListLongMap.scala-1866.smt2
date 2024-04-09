; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33638 () Bool)

(assert start!33638)

(declare-fun b_free!6865 () Bool)

(declare-fun b_next!6865 () Bool)

(assert (=> start!33638 (= b_free!6865 (not b_next!6865))))

(declare-fun tp!24099 () Bool)

(declare-fun b_and!14063 () Bool)

(assert (=> start!33638 (= tp!24099 b_and!14063)))

(declare-fun b!333574 () Bool)

(declare-fun res!183851 () Bool)

(declare-fun e!204828 () Bool)

(assert (=> b!333574 (=> (not res!183851) (not e!204828))))

(declare-datatypes ((V!10067 0))(
  ( (V!10068 (val!3453 Int)) )
))
(declare-datatypes ((ValueCell!3065 0))(
  ( (ValueCellFull!3065 (v!5611 V!10067)) (EmptyCell!3065) )
))
(declare-datatypes ((array!17225 0))(
  ( (array!17226 (arr!8140 (Array (_ BitVec 32) ValueCell!3065)) (size!8492 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17225)

(declare-datatypes ((array!17227 0))(
  ( (array!17228 (arr!8141 (Array (_ BitVec 32) (_ BitVec 64))) (size!8493 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17227)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun mask!2385 () (_ BitVec 32))

(assert (=> b!333574 (= res!183851 (and (= (size!8492 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8493 _keys!1895) (size!8492 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333575 () Bool)

(declare-fun e!204823 () Bool)

(declare-fun tp_is_empty!6817 () Bool)

(assert (=> b!333575 (= e!204823 tp_is_empty!6817)))

(declare-fun b!333576 () Bool)

(declare-fun e!204825 () Bool)

(assert (=> b!333576 (= e!204825 tp_is_empty!6817)))

(declare-fun res!183850 () Bool)

(assert (=> start!33638 (=> (not res!183850) (not e!204828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33638 (= res!183850 (validMask!0 mask!2385))))

(assert (=> start!33638 e!204828))

(assert (=> start!33638 true))

(assert (=> start!33638 tp_is_empty!6817))

(assert (=> start!33638 tp!24099))

(declare-fun e!204827 () Bool)

(declare-fun array_inv!6050 (array!17225) Bool)

(assert (=> start!33638 (and (array_inv!6050 _values!1525) e!204827)))

(declare-fun array_inv!6051 (array!17227) Bool)

(assert (=> start!33638 (array_inv!6051 _keys!1895)))

(declare-fun b!333577 () Bool)

(declare-fun res!183849 () Bool)

(assert (=> b!333577 (=> (not res!183849) (not e!204828))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10067)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10067)

(declare-datatypes ((tuple2!5018 0))(
  ( (tuple2!5019 (_1!2519 (_ BitVec 64)) (_2!2519 V!10067)) )
))
(declare-datatypes ((List!4660 0))(
  ( (Nil!4657) (Cons!4656 (h!5512 tuple2!5018) (t!9756 List!4660)) )
))
(declare-datatypes ((ListLongMap!3945 0))(
  ( (ListLongMap!3946 (toList!1988 List!4660)) )
))
(declare-fun contains!2028 (ListLongMap!3945 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1511 (array!17227 array!17225 (_ BitVec 32) (_ BitVec 32) V!10067 V!10067 (_ BitVec 32) Int) ListLongMap!3945)

(assert (=> b!333577 (= res!183849 (not (contains!2028 (getCurrentListMap!1511 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!333578 () Bool)

(declare-fun res!183852 () Bool)

(assert (=> b!333578 (=> (not res!183852) (not e!204828))))

(declare-datatypes ((List!4661 0))(
  ( (Nil!4658) (Cons!4657 (h!5513 (_ BitVec 64)) (t!9757 List!4661)) )
))
(declare-fun arrayNoDuplicates!0 (array!17227 (_ BitVec 32) List!4661) Bool)

(assert (=> b!333578 (= res!183852 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4658))))

(declare-fun mapNonEmpty!11622 () Bool)

(declare-fun mapRes!11622 () Bool)

(declare-fun tp!24098 () Bool)

(assert (=> mapNonEmpty!11622 (= mapRes!11622 (and tp!24098 e!204823))))

(declare-fun mapRest!11622 () (Array (_ BitVec 32) ValueCell!3065))

(declare-fun mapValue!11622 () ValueCell!3065)

(declare-fun mapKey!11622 () (_ BitVec 32))

(assert (=> mapNonEmpty!11622 (= (arr!8140 _values!1525) (store mapRest!11622 mapKey!11622 mapValue!11622))))

(declare-fun b!333579 () Bool)

(declare-fun res!183854 () Bool)

(assert (=> b!333579 (=> (not res!183854) (not e!204828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333579 (= res!183854 (validKeyInArray!0 k!1348))))

(declare-fun b!333580 () Bool)

(declare-fun res!183848 () Bool)

(assert (=> b!333580 (=> (not res!183848) (not e!204828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17227 (_ BitVec 32)) Bool)

(assert (=> b!333580 (= res!183848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!333581 () Bool)

(assert (=> b!333581 (= e!204827 (and e!204825 mapRes!11622))))

(declare-fun condMapEmpty!11622 () Bool)

(declare-fun mapDefault!11622 () ValueCell!3065)

