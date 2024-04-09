; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98012 () Bool)

(assert start!98012)

(declare-fun b_free!23677 () Bool)

(declare-fun b_next!23677 () Bool)

(assert (=> start!98012 (= b_free!23677 (not b_next!23677))))

(declare-fun tp!83735 () Bool)

(declare-fun b_and!38159 () Bool)

(assert (=> start!98012 (= tp!83735 b_and!38159)))

(declare-fun b!1123333 () Bool)

(declare-fun e!639556 () Bool)

(declare-fun e!639555 () Bool)

(assert (=> b!1123333 (= e!639556 e!639555)))

(declare-fun res!750581 () Bool)

(assert (=> b!1123333 (=> (not res!750581) (not e!639555))))

(declare-datatypes ((array!73240 0))(
  ( (array!73241 (arr!35269 (Array (_ BitVec 32) (_ BitVec 64))) (size!35806 (_ BitVec 32))) )
))
(declare-fun lt!499035 () array!73240)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73240 (_ BitVec 32)) Bool)

(assert (=> b!1123333 (= res!750581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499035 mask!1564))))

(declare-fun _keys!1208 () array!73240)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123333 (= lt!499035 (array!73241 (store (arr!35269 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35806 _keys!1208)))))

(declare-fun b!1123334 () Bool)

(declare-fun res!750575 () Bool)

(assert (=> b!1123334 (=> (not res!750575) (not e!639556))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1123334 (= res!750575 (= (select (arr!35269 _keys!1208) i!673) k!934))))

(declare-fun b!1123335 () Bool)

(declare-fun res!750579 () Bool)

(assert (=> b!1123335 (=> (not res!750579) (not e!639556))))

(declare-datatypes ((List!24691 0))(
  ( (Nil!24688) (Cons!24687 (h!25896 (_ BitVec 64)) (t!35367 List!24691)) )
))
(declare-fun arrayNoDuplicates!0 (array!73240 (_ BitVec 32) List!24691) Bool)

(assert (=> b!1123335 (= res!750579 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24688))))

(declare-fun b!1123336 () Bool)

(declare-fun e!639563 () Bool)

(declare-fun tp_is_empty!28207 () Bool)

(assert (=> b!1123336 (= e!639563 tp_is_empty!28207)))

(declare-fun b!1123337 () Bool)

(declare-fun res!750582 () Bool)

(assert (=> b!1123337 (=> (not res!750582) (not e!639556))))

(assert (=> b!1123337 (= res!750582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123338 () Bool)

(declare-fun e!639561 () Bool)

(declare-fun mapRes!44128 () Bool)

(assert (=> b!1123338 (= e!639561 (and e!639563 mapRes!44128))))

(declare-fun condMapEmpty!44128 () Bool)

(declare-datatypes ((V!42737 0))(
  ( (V!42738 (val!14160 Int)) )
))
(declare-datatypes ((ValueCell!13394 0))(
  ( (ValueCellFull!13394 (v!16794 V!42737)) (EmptyCell!13394) )
))
(declare-datatypes ((array!73242 0))(
  ( (array!73243 (arr!35270 (Array (_ BitVec 32) ValueCell!13394)) (size!35807 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73242)

(declare-fun mapDefault!44128 () ValueCell!13394)

