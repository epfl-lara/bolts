; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83218 () Bool)

(assert start!83218)

(declare-fun b_free!19183 () Bool)

(declare-fun b_next!19183 () Bool)

(assert (=> start!83218 (= b_free!19183 (not b_next!19183))))

(declare-fun tp!66829 () Bool)

(declare-fun b_and!30689 () Bool)

(assert (=> start!83218 (= tp!66829 b_and!30689)))

(declare-fun b!970424 () Bool)

(declare-fun e!547121 () Bool)

(assert (=> b!970424 (= e!547121 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun lt!431698 () Bool)

(declare-datatypes ((V!34425 0))(
  ( (V!34426 (val!11091 Int)) )
))
(declare-datatypes ((ValueCell!10559 0))(
  ( (ValueCellFull!10559 (v!13650 V!34425)) (EmptyCell!10559) )
))
(declare-datatypes ((array!60201 0))(
  ( (array!60202 (arr!28960 (Array (_ BitVec 32) ValueCell!10559)) (size!29440 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60201)

(declare-fun zeroValue!1367 () V!34425)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34425)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60203 0))(
  ( (array!60204 (arr!28961 (Array (_ BitVec 32) (_ BitVec 64))) (size!29441 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60203)

(declare-datatypes ((tuple2!14312 0))(
  ( (tuple2!14313 (_1!7166 (_ BitVec 64)) (_2!7166 V!34425)) )
))
(declare-datatypes ((List!20202 0))(
  ( (Nil!20199) (Cons!20198 (h!21360 tuple2!14312) (t!28573 List!20202)) )
))
(declare-datatypes ((ListLongMap!13023 0))(
  ( (ListLongMap!13024 (toList!6527 List!20202)) )
))
(declare-fun contains!5582 (ListLongMap!13023 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3712 (array!60203 array!60201 (_ BitVec 32) (_ BitVec 32) V!34425 V!34425 (_ BitVec 32) Int) ListLongMap!13023)

(assert (=> b!970424 (= lt!431698 (contains!5582 (getCurrentListMap!3712 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28961 _keys!1717) i!822)))))

(declare-fun b!970425 () Bool)

(declare-fun res!649633 () Bool)

(assert (=> b!970425 (=> (not res!649633) (not e!547121))))

(assert (=> b!970425 (= res!649633 (and (= (size!29440 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29441 _keys!1717) (size!29440 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970426 () Bool)

(declare-fun res!649636 () Bool)

(assert (=> b!970426 (=> (not res!649636) (not e!547121))))

(declare-datatypes ((List!20203 0))(
  ( (Nil!20200) (Cons!20199 (h!21361 (_ BitVec 64)) (t!28574 List!20203)) )
))
(declare-fun arrayNoDuplicates!0 (array!60203 (_ BitVec 32) List!20203) Bool)

(assert (=> b!970426 (= res!649636 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20200))))

(declare-fun b!970427 () Bool)

(declare-fun res!649631 () Bool)

(assert (=> b!970427 (=> (not res!649631) (not e!547121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60203 (_ BitVec 32)) Bool)

(assert (=> b!970427 (= res!649631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970428 () Bool)

(declare-fun e!547120 () Bool)

(declare-fun tp_is_empty!22081 () Bool)

(assert (=> b!970428 (= e!547120 tp_is_empty!22081)))

(declare-fun mapNonEmpty!35131 () Bool)

(declare-fun mapRes!35131 () Bool)

(declare-fun tp!66828 () Bool)

(assert (=> mapNonEmpty!35131 (= mapRes!35131 (and tp!66828 e!547120))))

(declare-fun mapKey!35131 () (_ BitVec 32))

(declare-fun mapValue!35131 () ValueCell!10559)

(declare-fun mapRest!35131 () (Array (_ BitVec 32) ValueCell!10559))

(assert (=> mapNonEmpty!35131 (= (arr!28960 _values!1425) (store mapRest!35131 mapKey!35131 mapValue!35131))))

(declare-fun res!649632 () Bool)

(assert (=> start!83218 (=> (not res!649632) (not e!547121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83218 (= res!649632 (validMask!0 mask!2147))))

(assert (=> start!83218 e!547121))

(assert (=> start!83218 true))

(declare-fun e!547118 () Bool)

(declare-fun array_inv!22305 (array!60201) Bool)

(assert (=> start!83218 (and (array_inv!22305 _values!1425) e!547118)))

(assert (=> start!83218 tp_is_empty!22081))

(assert (=> start!83218 tp!66829))

(declare-fun array_inv!22306 (array!60203) Bool)

(assert (=> start!83218 (array_inv!22306 _keys!1717)))

(declare-fun b!970429 () Bool)

(declare-fun e!547122 () Bool)

(assert (=> b!970429 (= e!547118 (and e!547122 mapRes!35131))))

(declare-fun condMapEmpty!35131 () Bool)

(declare-fun mapDefault!35131 () ValueCell!10559)

