; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83188 () Bool)

(assert start!83188)

(declare-fun b_free!19153 () Bool)

(declare-fun b_next!19153 () Bool)

(assert (=> start!83188 (= b_free!19153 (not b_next!19153))))

(declare-fun tp!66739 () Bool)

(declare-fun b_and!30659 () Bool)

(assert (=> start!83188 (= tp!66739 b_and!30659)))

(declare-fun b!970019 () Bool)

(declare-fun res!649364 () Bool)

(declare-fun e!546895 () Bool)

(assert (=> b!970019 (=> (not res!649364) (not e!546895))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34385 0))(
  ( (V!34386 (val!11076 Int)) )
))
(declare-datatypes ((ValueCell!10544 0))(
  ( (ValueCellFull!10544 (v!13635 V!34385)) (EmptyCell!10544) )
))
(declare-datatypes ((array!60145 0))(
  ( (array!60146 (arr!28932 (Array (_ BitVec 32) ValueCell!10544)) (size!29412 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60145)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60147 0))(
  ( (array!60148 (arr!28933 (Array (_ BitVec 32) (_ BitVec 64))) (size!29413 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60147)

(assert (=> b!970019 (= res!649364 (and (= (size!29412 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29413 _keys!1717) (size!29412 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970020 () Bool)

(declare-fun res!649361 () Bool)

(assert (=> b!970020 (=> (not res!649361) (not e!546895))))

(declare-datatypes ((List!20180 0))(
  ( (Nil!20177) (Cons!20176 (h!21338 (_ BitVec 64)) (t!28551 List!20180)) )
))
(declare-fun arrayNoDuplicates!0 (array!60147 (_ BitVec 32) List!20180) Bool)

(assert (=> b!970020 (= res!649361 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20177))))

(declare-fun b!970021 () Bool)

(assert (=> b!970021 (= e!546895 false)))

(declare-fun lt!431653 () Bool)

(declare-fun zeroValue!1367 () V!34385)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34385)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14288 0))(
  ( (tuple2!14289 (_1!7154 (_ BitVec 64)) (_2!7154 V!34385)) )
))
(declare-datatypes ((List!20181 0))(
  ( (Nil!20178) (Cons!20177 (h!21339 tuple2!14288) (t!28552 List!20181)) )
))
(declare-datatypes ((ListLongMap!12999 0))(
  ( (ListLongMap!13000 (toList!6515 List!20181)) )
))
(declare-fun contains!5570 (ListLongMap!12999 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3700 (array!60147 array!60145 (_ BitVec 32) (_ BitVec 32) V!34385 V!34385 (_ BitVec 32) Int) ListLongMap!12999)

(assert (=> b!970021 (= lt!431653 (contains!5570 (getCurrentListMap!3700 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28933 _keys!1717) i!822)))))

(declare-fun b!970022 () Bool)

(declare-fun res!649363 () Bool)

(assert (=> b!970022 (=> (not res!649363) (not e!546895))))

(assert (=> b!970022 (= res!649363 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29413 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29413 _keys!1717))))))

(declare-fun mapNonEmpty!35086 () Bool)

(declare-fun mapRes!35086 () Bool)

(declare-fun tp!66738 () Bool)

(declare-fun e!546897 () Bool)

(assert (=> mapNonEmpty!35086 (= mapRes!35086 (and tp!66738 e!546897))))

(declare-fun mapRest!35086 () (Array (_ BitVec 32) ValueCell!10544))

(declare-fun mapValue!35086 () ValueCell!10544)

(declare-fun mapKey!35086 () (_ BitVec 32))

(assert (=> mapNonEmpty!35086 (= (arr!28932 _values!1425) (store mapRest!35086 mapKey!35086 mapValue!35086))))

(declare-fun b!970023 () Bool)

(declare-fun res!649366 () Bool)

(assert (=> b!970023 (=> (not res!649366) (not e!546895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970023 (= res!649366 (validKeyInArray!0 (select (arr!28933 _keys!1717) i!822)))))

(declare-fun b!970024 () Bool)

(declare-fun res!649365 () Bool)

(assert (=> b!970024 (=> (not res!649365) (not e!546895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60147 (_ BitVec 32)) Bool)

(assert (=> b!970024 (= res!649365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970025 () Bool)

(declare-fun e!546894 () Bool)

(declare-fun tp_is_empty!22051 () Bool)

(assert (=> b!970025 (= e!546894 tp_is_empty!22051)))

(declare-fun b!970026 () Bool)

(assert (=> b!970026 (= e!546897 tp_is_empty!22051)))

(declare-fun b!970027 () Bool)

(declare-fun e!546896 () Bool)

(assert (=> b!970027 (= e!546896 (and e!546894 mapRes!35086))))

(declare-fun condMapEmpty!35086 () Bool)

(declare-fun mapDefault!35086 () ValueCell!10544)

