; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84342 () Bool)

(assert start!84342)

(declare-fun mapIsEmpty!36704 () Bool)

(declare-fun mapRes!36704 () Bool)

(assert (=> mapIsEmpty!36704 mapRes!36704))

(declare-fun b!986176 () Bool)

(declare-fun res!659948 () Bool)

(declare-fun e!556036 () Bool)

(assert (=> b!986176 (=> (not res!659948) (not e!556036))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35805 0))(
  ( (V!35806 (val!11609 Int)) )
))
(declare-datatypes ((ValueCell!11077 0))(
  ( (ValueCellFull!11077 (v!14171 V!35805)) (EmptyCell!11077) )
))
(declare-datatypes ((array!62185 0))(
  ( (array!62186 (arr!29946 (Array (_ BitVec 32) ValueCell!11077)) (size!30426 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62185)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62187 0))(
  ( (array!62188 (arr!29947 (Array (_ BitVec 32) (_ BitVec 64))) (size!30427 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62187)

(assert (=> b!986176 (= res!659948 (and (= (size!30426 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30427 _keys!1544) (size!30426 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986177 () Bool)

(assert (=> b!986177 (= e!556036 false)))

(declare-fun lt!437416 () Bool)

(declare-datatypes ((List!20850 0))(
  ( (Nil!20847) (Cons!20846 (h!22008 (_ BitVec 64)) (t!29757 List!20850)) )
))
(declare-fun arrayNoDuplicates!0 (array!62187 (_ BitVec 32) List!20850) Bool)

(assert (=> b!986177 (= lt!437416 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20847))))

(declare-fun b!986178 () Bool)

(declare-fun e!556039 () Bool)

(declare-fun e!556037 () Bool)

(assert (=> b!986178 (= e!556039 (and e!556037 mapRes!36704))))

(declare-fun condMapEmpty!36704 () Bool)

(declare-fun mapDefault!36704 () ValueCell!11077)

