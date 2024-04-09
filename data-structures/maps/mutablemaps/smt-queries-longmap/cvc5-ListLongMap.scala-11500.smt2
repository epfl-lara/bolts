; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133866 () Bool)

(assert start!133866)

(declare-fun mapIsEmpty!59704 () Bool)

(declare-fun mapRes!59704 () Bool)

(assert (=> mapIsEmpty!59704 mapRes!59704))

(declare-fun b!1564615 () Bool)

(declare-fun res!1069713 () Bool)

(declare-fun e!872096 () Bool)

(assert (=> b!1564615 (=> (not res!1069713) (not e!872096))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104419 0))(
  ( (array!104420 (arr!50395 (Array (_ BitVec 32) (_ BitVec 64))) (size!50946 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104419)

(declare-datatypes ((V!60049 0))(
  ( (V!60050 (val!19524 Int)) )
))
(declare-datatypes ((ValueCell!18410 0))(
  ( (ValueCellFull!18410 (v!22275 V!60049)) (EmptyCell!18410) )
))
(declare-datatypes ((array!104421 0))(
  ( (array!104422 (arr!50396 (Array (_ BitVec 32) ValueCell!18410)) (size!50947 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104421)

(assert (=> b!1564615 (= res!1069713 (and (= (size!50947 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50946 _keys!637) (size!50947 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564616 () Bool)

(assert (=> b!1564616 (= e!872096 false)))

(declare-fun lt!672023 () Bool)

(declare-datatypes ((List!36741 0))(
  ( (Nil!36738) (Cons!36737 (h!38184 (_ BitVec 64)) (t!51595 List!36741)) )
))
(declare-fun arrayNoDuplicates!0 (array!104419 (_ BitVec 32) List!36741) Bool)

(assert (=> b!1564616 (= lt!672023 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36738))))

(declare-fun b!1564617 () Bool)

(declare-fun e!872092 () Bool)

(declare-fun tp_is_empty!38881 () Bool)

(assert (=> b!1564617 (= e!872092 tp_is_empty!38881)))

(declare-fun b!1564618 () Bool)

(declare-fun e!872094 () Bool)

(assert (=> b!1564618 (= e!872094 tp_is_empty!38881)))

(declare-fun b!1564614 () Bool)

(declare-fun e!872093 () Bool)

(assert (=> b!1564614 (= e!872093 (and e!872092 mapRes!59704))))

(declare-fun condMapEmpty!59704 () Bool)

(declare-fun mapDefault!59704 () ValueCell!18410)

