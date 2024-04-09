; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83438 () Bool)

(assert start!83438)

(declare-fun b_free!19403 () Bool)

(declare-fun b_next!19403 () Bool)

(assert (=> start!83438 (= b_free!19403 (not b_next!19403))))

(declare-fun tp!67488 () Bool)

(declare-fun b_and!31023 () Bool)

(assert (=> start!83438 (= tp!67488 b_and!31023)))

(declare-fun b!973984 () Bool)

(declare-fun res!652090 () Bool)

(declare-fun e!549021 () Bool)

(assert (=> b!973984 (=> (not res!652090) (not e!549021))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34717 0))(
  ( (V!34718 (val!11201 Int)) )
))
(declare-datatypes ((ValueCell!10669 0))(
  ( (ValueCellFull!10669 (v!13760 V!34717)) (EmptyCell!10669) )
))
(declare-datatypes ((array!60623 0))(
  ( (array!60624 (arr!29171 (Array (_ BitVec 32) ValueCell!10669)) (size!29651 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60623)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60625 0))(
  ( (array!60626 (arr!29172 (Array (_ BitVec 32) (_ BitVec 64))) (size!29652 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60625)

(assert (=> b!973984 (= res!652090 (and (= (size!29651 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29652 _keys!1717) (size!29651 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!973985 () Bool)

(assert (=> b!973985 (= e!549021 false)))

(declare-datatypes ((tuple2!14486 0))(
  ( (tuple2!14487 (_1!7253 (_ BitVec 64)) (_2!7253 V!34717)) )
))
(declare-datatypes ((List!20364 0))(
  ( (Nil!20361) (Cons!20360 (h!21522 tuple2!14486) (t!28849 List!20364)) )
))
(declare-datatypes ((ListLongMap!13197 0))(
  ( (ListLongMap!13198 (toList!6614 List!20364)) )
))
(declare-fun lt!432685 () ListLongMap!13197)

(declare-fun zeroValue!1367 () V!34717)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34717)

(declare-fun getCurrentListMap!3799 (array!60625 array!60623 (_ BitVec 32) (_ BitVec 32) V!34717 V!34717 (_ BitVec 32) Int) ListLongMap!13197)

(assert (=> b!973985 (= lt!432685 (getCurrentListMap!3799 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973986 () Bool)

(declare-fun res!652089 () Bool)

(assert (=> b!973986 (=> (not res!652089) (not e!549021))))

(declare-datatypes ((List!20365 0))(
  ( (Nil!20362) (Cons!20361 (h!21523 (_ BitVec 64)) (t!28850 List!20365)) )
))
(declare-fun arrayNoDuplicates!0 (array!60625 (_ BitVec 32) List!20365) Bool)

(assert (=> b!973986 (= res!652089 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20362))))

(declare-fun mapIsEmpty!35461 () Bool)

(declare-fun mapRes!35461 () Bool)

(assert (=> mapIsEmpty!35461 mapRes!35461))

(declare-fun b!973987 () Bool)

(declare-fun res!652091 () Bool)

(assert (=> b!973987 (=> (not res!652091) (not e!549021))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973987 (= res!652091 (validKeyInArray!0 (select (arr!29172 _keys!1717) i!822)))))

(declare-fun b!973988 () Bool)

(declare-fun e!549024 () Bool)

(declare-fun e!549022 () Bool)

(assert (=> b!973988 (= e!549024 (and e!549022 mapRes!35461))))

(declare-fun condMapEmpty!35461 () Bool)

(declare-fun mapDefault!35461 () ValueCell!10669)

