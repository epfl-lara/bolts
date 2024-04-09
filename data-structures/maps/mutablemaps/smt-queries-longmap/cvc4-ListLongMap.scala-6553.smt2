; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83234 () Bool)

(assert start!83234)

(declare-fun b_free!19199 () Bool)

(declare-fun b_next!19199 () Bool)

(assert (=> start!83234 (= b_free!19199 (not b_next!19199))))

(declare-fun tp!66876 () Bool)

(declare-fun b_and!30705 () Bool)

(assert (=> start!83234 (= tp!66876 b_and!30705)))

(declare-fun res!649775 () Bool)

(declare-fun e!547239 () Bool)

(assert (=> start!83234 (=> (not res!649775) (not e!547239))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83234 (= res!649775 (validMask!0 mask!2147))))

(assert (=> start!83234 e!547239))

(assert (=> start!83234 true))

(declare-datatypes ((V!34445 0))(
  ( (V!34446 (val!11099 Int)) )
))
(declare-datatypes ((ValueCell!10567 0))(
  ( (ValueCellFull!10567 (v!13658 V!34445)) (EmptyCell!10567) )
))
(declare-datatypes ((array!60229 0))(
  ( (array!60230 (arr!28974 (Array (_ BitVec 32) ValueCell!10567)) (size!29454 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60229)

(declare-fun e!547241 () Bool)

(declare-fun array_inv!22317 (array!60229) Bool)

(assert (=> start!83234 (and (array_inv!22317 _values!1425) e!547241)))

(declare-fun tp_is_empty!22097 () Bool)

(assert (=> start!83234 tp_is_empty!22097))

(assert (=> start!83234 tp!66876))

(declare-datatypes ((array!60231 0))(
  ( (array!60232 (arr!28975 (Array (_ BitVec 32) (_ BitVec 64))) (size!29455 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60231)

(declare-fun array_inv!22318 (array!60231) Bool)

(assert (=> start!83234 (array_inv!22318 _keys!1717)))

(declare-fun mapIsEmpty!35155 () Bool)

(declare-fun mapRes!35155 () Bool)

(assert (=> mapIsEmpty!35155 mapRes!35155))

(declare-fun b!970640 () Bool)

(declare-fun e!547240 () Bool)

(assert (=> b!970640 (= e!547240 tp_is_empty!22097)))

(declare-fun b!970641 () Bool)

(assert (=> b!970641 (= e!547239 false)))

(declare-fun zeroValue!1367 () V!34445)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun lt!431722 () Bool)

(declare-fun minValue!1367 () V!34445)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14322 0))(
  ( (tuple2!14323 (_1!7171 (_ BitVec 64)) (_2!7171 V!34445)) )
))
(declare-datatypes ((List!20213 0))(
  ( (Nil!20210) (Cons!20209 (h!21371 tuple2!14322) (t!28584 List!20213)) )
))
(declare-datatypes ((ListLongMap!13033 0))(
  ( (ListLongMap!13034 (toList!6532 List!20213)) )
))
(declare-fun contains!5587 (ListLongMap!13033 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3717 (array!60231 array!60229 (_ BitVec 32) (_ BitVec 32) V!34445 V!34445 (_ BitVec 32) Int) ListLongMap!13033)

(assert (=> b!970641 (= lt!431722 (contains!5587 (getCurrentListMap!3717 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28975 _keys!1717) i!822)))))

(declare-fun b!970642 () Bool)

(declare-fun res!649777 () Bool)

(assert (=> b!970642 (=> (not res!649777) (not e!547239))))

(assert (=> b!970642 (= res!649777 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29455 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29455 _keys!1717))))))

(declare-fun b!970643 () Bool)

(declare-fun res!649776 () Bool)

(assert (=> b!970643 (=> (not res!649776) (not e!547239))))

(assert (=> b!970643 (= res!649776 (and (= (size!29454 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29455 _keys!1717) (size!29454 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970644 () Bool)

(declare-fun res!649778 () Bool)

(assert (=> b!970644 (=> (not res!649778) (not e!547239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60231 (_ BitVec 32)) Bool)

(assert (=> b!970644 (= res!649778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970645 () Bool)

(declare-fun res!649779 () Bool)

(assert (=> b!970645 (=> (not res!649779) (not e!547239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970645 (= res!649779 (validKeyInArray!0 (select (arr!28975 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35155 () Bool)

(declare-fun tp!66877 () Bool)

(declare-fun e!547242 () Bool)

(assert (=> mapNonEmpty!35155 (= mapRes!35155 (and tp!66877 e!547242))))

(declare-fun mapKey!35155 () (_ BitVec 32))

(declare-fun mapValue!35155 () ValueCell!10567)

(declare-fun mapRest!35155 () (Array (_ BitVec 32) ValueCell!10567))

(assert (=> mapNonEmpty!35155 (= (arr!28974 _values!1425) (store mapRest!35155 mapKey!35155 mapValue!35155))))

(declare-fun b!970646 () Bool)

(assert (=> b!970646 (= e!547242 tp_is_empty!22097)))

(declare-fun b!970647 () Bool)

(declare-fun res!649780 () Bool)

(assert (=> b!970647 (=> (not res!649780) (not e!547239))))

(declare-datatypes ((List!20214 0))(
  ( (Nil!20211) (Cons!20210 (h!21372 (_ BitVec 64)) (t!28585 List!20214)) )
))
(declare-fun arrayNoDuplicates!0 (array!60231 (_ BitVec 32) List!20214) Bool)

(assert (=> b!970647 (= res!649780 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20211))))

(declare-fun b!970648 () Bool)

(assert (=> b!970648 (= e!547241 (and e!547240 mapRes!35155))))

(declare-fun condMapEmpty!35155 () Bool)

(declare-fun mapDefault!35155 () ValueCell!10567)

