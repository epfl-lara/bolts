; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82254 () Bool)

(assert start!82254)

(declare-fun b_free!18499 () Bool)

(declare-fun b_next!18499 () Bool)

(assert (=> start!82254 (= b_free!18499 (not b_next!18499))))

(declare-fun tp!64459 () Bool)

(declare-fun b_and!30005 () Bool)

(assert (=> start!82254 (= tp!64459 b_and!30005)))

(declare-fun res!641543 () Bool)

(declare-fun e!540259 () Bool)

(assert (=> start!82254 (=> (not res!641543) (not e!540259))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82254 (= res!641543 (validMask!0 mask!2088))))

(assert (=> start!82254 e!540259))

(assert (=> start!82254 true))

(declare-fun tp_is_empty!21205 () Bool)

(assert (=> start!82254 tp_is_empty!21205))

(declare-datatypes ((array!58527 0))(
  ( (array!58528 (arr!28133 (Array (_ BitVec 32) (_ BitVec 64))) (size!28613 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58527)

(declare-fun array_inv!21761 (array!58527) Bool)

(assert (=> start!82254 (array_inv!21761 _keys!1668)))

(declare-datatypes ((V!33257 0))(
  ( (V!33258 (val!10653 Int)) )
))
(declare-datatypes ((ValueCell!10121 0))(
  ( (ValueCellFull!10121 (v!13210 V!33257)) (EmptyCell!10121) )
))
(declare-datatypes ((array!58529 0))(
  ( (array!58530 (arr!28134 (Array (_ BitVec 32) ValueCell!10121)) (size!28614 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58529)

(declare-fun e!540260 () Bool)

(declare-fun array_inv!21762 (array!58529) Bool)

(assert (=> start!82254 (and (array_inv!21762 _values!1386) e!540260)))

(assert (=> start!82254 tp!64459))

(declare-fun b!958265 () Bool)

(assert (=> b!958265 (= e!540259 false)))

(declare-fun lt!430385 () Bool)

(declare-fun minValue!1328 () V!33257)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33257)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13824 0))(
  ( (tuple2!13825 (_1!6922 (_ BitVec 64)) (_2!6922 V!33257)) )
))
(declare-datatypes ((List!19689 0))(
  ( (Nil!19686) (Cons!19685 (h!20847 tuple2!13824) (t!28060 List!19689)) )
))
(declare-datatypes ((ListLongMap!12535 0))(
  ( (ListLongMap!12536 (toList!6283 List!19689)) )
))
(declare-fun contains!5336 (ListLongMap!12535 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3468 (array!58527 array!58529 (_ BitVec 32) (_ BitVec 32) V!33257 V!33257 (_ BitVec 32) Int) ListLongMap!12535)

(assert (=> b!958265 (= lt!430385 (contains!5336 (getCurrentListMap!3468 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28133 _keys!1668) i!793)))))

(declare-fun b!958266 () Bool)

(declare-fun res!641547 () Bool)

(assert (=> b!958266 (=> (not res!641547) (not e!540259))))

(declare-datatypes ((List!19690 0))(
  ( (Nil!19687) (Cons!19686 (h!20848 (_ BitVec 64)) (t!28061 List!19690)) )
))
(declare-fun arrayNoDuplicates!0 (array!58527 (_ BitVec 32) List!19690) Bool)

(assert (=> b!958266 (= res!641547 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19687))))

(declare-fun mapNonEmpty!33787 () Bool)

(declare-fun mapRes!33787 () Bool)

(declare-fun tp!64458 () Bool)

(declare-fun e!540261 () Bool)

(assert (=> mapNonEmpty!33787 (= mapRes!33787 (and tp!64458 e!540261))))

(declare-fun mapRest!33787 () (Array (_ BitVec 32) ValueCell!10121))

(declare-fun mapValue!33787 () ValueCell!10121)

(declare-fun mapKey!33787 () (_ BitVec 32))

(assert (=> mapNonEmpty!33787 (= (arr!28134 _values!1386) (store mapRest!33787 mapKey!33787 mapValue!33787))))

(declare-fun b!958267 () Bool)

(declare-fun res!641546 () Bool)

(assert (=> b!958267 (=> (not res!641546) (not e!540259))))

(assert (=> b!958267 (= res!641546 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28613 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28613 _keys!1668))))))

(declare-fun b!958268 () Bool)

(declare-fun res!641545 () Bool)

(assert (=> b!958268 (=> (not res!641545) (not e!540259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958268 (= res!641545 (validKeyInArray!0 (select (arr!28133 _keys!1668) i!793)))))

(declare-fun b!958269 () Bool)

(declare-fun e!540262 () Bool)

(assert (=> b!958269 (= e!540262 tp_is_empty!21205)))

(declare-fun b!958270 () Bool)

(assert (=> b!958270 (= e!540260 (and e!540262 mapRes!33787))))

(declare-fun condMapEmpty!33787 () Bool)

(declare-fun mapDefault!33787 () ValueCell!10121)

