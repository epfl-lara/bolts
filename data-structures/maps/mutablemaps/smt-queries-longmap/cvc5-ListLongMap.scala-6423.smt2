; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82362 () Bool)

(assert start!82362)

(declare-fun b_free!18601 () Bool)

(declare-fun b_next!18601 () Bool)

(assert (=> start!82362 (= b_free!18601 (not b_next!18601))))

(declare-fun tp!64773 () Bool)

(declare-fun b_and!30107 () Bool)

(assert (=> start!82362 (= tp!64773 b_and!30107)))

(declare-fun b!959786 () Bool)

(declare-fun res!642578 () Bool)

(declare-fun e!541070 () Bool)

(assert (=> b!959786 (=> (not res!642578) (not e!541070))))

(declare-datatypes ((array!58733 0))(
  ( (array!58734 (arr!28236 (Array (_ BitVec 32) (_ BitVec 64))) (size!28716 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58733)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58733 (_ BitVec 32)) Bool)

(assert (=> b!959786 (= res!642578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33949 () Bool)

(declare-fun mapRes!33949 () Bool)

(declare-fun tp!64774 () Bool)

(declare-fun e!541073 () Bool)

(assert (=> mapNonEmpty!33949 (= mapRes!33949 (and tp!64774 e!541073))))

(declare-datatypes ((V!33401 0))(
  ( (V!33402 (val!10707 Int)) )
))
(declare-datatypes ((ValueCell!10175 0))(
  ( (ValueCellFull!10175 (v!13264 V!33401)) (EmptyCell!10175) )
))
(declare-fun mapValue!33949 () ValueCell!10175)

(declare-fun mapRest!33949 () (Array (_ BitVec 32) ValueCell!10175))

(declare-fun mapKey!33949 () (_ BitVec 32))

(declare-datatypes ((array!58735 0))(
  ( (array!58736 (arr!28237 (Array (_ BitVec 32) ValueCell!10175)) (size!28717 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58735)

(assert (=> mapNonEmpty!33949 (= (arr!28237 _values!1386) (store mapRest!33949 mapKey!33949 mapValue!33949))))

(declare-fun b!959788 () Bool)

(declare-fun e!541072 () Bool)

(declare-fun tp_is_empty!21313 () Bool)

(assert (=> b!959788 (= e!541072 tp_is_empty!21313)))

(declare-fun mapIsEmpty!33949 () Bool)

(assert (=> mapIsEmpty!33949 mapRes!33949))

(declare-fun b!959789 () Bool)

(declare-fun res!642579 () Bool)

(assert (=> b!959789 (=> (not res!642579) (not e!541070))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959789 (= res!642579 (validKeyInArray!0 (select (arr!28236 _keys!1668) i!793)))))

(declare-fun b!959790 () Bool)

(assert (=> b!959790 (= e!541070 false)))

(declare-fun lt!430538 () Bool)

(declare-fun minValue!1328 () V!33401)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33401)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((tuple2!13896 0))(
  ( (tuple2!13897 (_1!6958 (_ BitVec 64)) (_2!6958 V!33401)) )
))
(declare-datatypes ((List!19760 0))(
  ( (Nil!19757) (Cons!19756 (h!20918 tuple2!13896) (t!28131 List!19760)) )
))
(declare-datatypes ((ListLongMap!12607 0))(
  ( (ListLongMap!12608 (toList!6319 List!19760)) )
))
(declare-fun contains!5369 (ListLongMap!12607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3504 (array!58733 array!58735 (_ BitVec 32) (_ BitVec 32) V!33401 V!33401 (_ BitVec 32) Int) ListLongMap!12607)

(assert (=> b!959790 (= lt!430538 (contains!5369 (getCurrentListMap!3504 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28236 _keys!1668) i!793)))))

(declare-fun b!959791 () Bool)

(declare-fun res!642582 () Bool)

(assert (=> b!959791 (=> (not res!642582) (not e!541070))))

(assert (=> b!959791 (= res!642582 (and (= (size!28717 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28716 _keys!1668) (size!28717 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959792 () Bool)

(declare-fun res!642580 () Bool)

(assert (=> b!959792 (=> (not res!642580) (not e!541070))))

(assert (=> b!959792 (= res!642580 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28716 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28716 _keys!1668))))))

(declare-fun b!959793 () Bool)

(assert (=> b!959793 (= e!541073 tp_is_empty!21313)))

(declare-fun b!959794 () Bool)

(declare-fun e!541069 () Bool)

(assert (=> b!959794 (= e!541069 (and e!541072 mapRes!33949))))

(declare-fun condMapEmpty!33949 () Bool)

(declare-fun mapDefault!33949 () ValueCell!10175)

