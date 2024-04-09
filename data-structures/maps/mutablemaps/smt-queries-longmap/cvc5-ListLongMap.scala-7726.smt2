; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97078 () Bool)

(assert start!97078)

(declare-fun b!1103761 () Bool)

(declare-fun res!736458 () Bool)

(declare-fun e!630121 () Bool)

(assert (=> b!1103761 (=> (not res!736458) (not e!630121))))

(declare-datatypes ((array!71536 0))(
  ( (array!71537 (arr!34421 (Array (_ BitVec 32) (_ BitVec 64))) (size!34958 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71536)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41569 0))(
  ( (V!41570 (val!13722 Int)) )
))
(declare-datatypes ((ValueCell!12956 0))(
  ( (ValueCellFull!12956 (v!16355 V!41569)) (EmptyCell!12956) )
))
(declare-datatypes ((array!71538 0))(
  ( (array!71539 (arr!34422 (Array (_ BitVec 32) ValueCell!12956)) (size!34959 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71538)

(assert (=> b!1103761 (= res!736458 (and (= (size!34959 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34958 _keys!1208) (size!34959 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103762 () Bool)

(declare-fun e!630123 () Bool)

(declare-fun tp_is_empty!27331 () Bool)

(assert (=> b!1103762 (= e!630123 tp_is_empty!27331)))

(declare-fun b!1103763 () Bool)

(declare-fun e!630122 () Bool)

(assert (=> b!1103763 (= e!630122 tp_is_empty!27331)))

(declare-fun b!1103764 () Bool)

(declare-fun res!736456 () Bool)

(assert (=> b!1103764 (=> (not res!736456) (not e!630121))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1103764 (= res!736456 (= (select (arr!34421 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!42802 () Bool)

(declare-fun mapRes!42802 () Bool)

(assert (=> mapIsEmpty!42802 mapRes!42802))

(declare-fun b!1103766 () Bool)

(declare-fun e!630125 () Bool)

(assert (=> b!1103766 (= e!630125 (and e!630122 mapRes!42802))))

(declare-fun condMapEmpty!42802 () Bool)

(declare-fun mapDefault!42802 () ValueCell!12956)

