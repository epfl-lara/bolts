; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84372 () Bool)

(assert start!84372)

(declare-fun b!986446 () Bool)

(declare-fun res!660083 () Bool)

(declare-fun e!556261 () Bool)

(assert (=> b!986446 (=> (not res!660083) (not e!556261))))

(declare-datatypes ((array!62245 0))(
  ( (array!62246 (arr!29976 (Array (_ BitVec 32) (_ BitVec 64))) (size!30456 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62245)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62245 (_ BitVec 32)) Bool)

(assert (=> b!986446 (= res!660083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986447 () Bool)

(declare-fun e!556262 () Bool)

(declare-fun tp_is_empty!23147 () Bool)

(assert (=> b!986447 (= e!556262 tp_is_empty!23147)))

(declare-fun b!986448 () Bool)

(assert (=> b!986448 (= e!556261 false)))

(declare-fun lt!437461 () Bool)

(declare-datatypes ((List!20861 0))(
  ( (Nil!20858) (Cons!20857 (h!22019 (_ BitVec 64)) (t!29768 List!20861)) )
))
(declare-fun arrayNoDuplicates!0 (array!62245 (_ BitVec 32) List!20861) Bool)

(assert (=> b!986448 (= lt!437461 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20858))))

(declare-fun mapIsEmpty!36749 () Bool)

(declare-fun mapRes!36749 () Bool)

(assert (=> mapIsEmpty!36749 mapRes!36749))

(declare-fun b!986449 () Bool)

(declare-fun res!660082 () Bool)

(assert (=> b!986449 (=> (not res!660082) (not e!556261))))

(declare-datatypes ((V!35845 0))(
  ( (V!35846 (val!11624 Int)) )
))
(declare-datatypes ((ValueCell!11092 0))(
  ( (ValueCellFull!11092 (v!14186 V!35845)) (EmptyCell!11092) )
))
(declare-datatypes ((array!62247 0))(
  ( (array!62248 (arr!29977 (Array (_ BitVec 32) ValueCell!11092)) (size!30457 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62247)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986449 (= res!660082 (and (= (size!30457 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30456 _keys!1544) (size!30457 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986450 () Bool)

(declare-fun e!556265 () Bool)

(assert (=> b!986450 (= e!556265 tp_is_empty!23147)))

(declare-fun b!986451 () Bool)

(declare-fun e!556263 () Bool)

(assert (=> b!986451 (= e!556263 (and e!556265 mapRes!36749))))

(declare-fun condMapEmpty!36749 () Bool)

(declare-fun mapDefault!36749 () ValueCell!11092)

