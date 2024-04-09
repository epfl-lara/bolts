; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84350 () Bool)

(assert start!84350)

(declare-fun b!986248 () Bool)

(declare-fun e!556096 () Bool)

(assert (=> b!986248 (= e!556096 false)))

(declare-fun lt!437428 () Bool)

(declare-datatypes ((array!62201 0))(
  ( (array!62202 (arr!29954 (Array (_ BitVec 32) (_ BitVec 64))) (size!30434 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62201)

(declare-datatypes ((List!20853 0))(
  ( (Nil!20850) (Cons!20849 (h!22011 (_ BitVec 64)) (t!29760 List!20853)) )
))
(declare-fun arrayNoDuplicates!0 (array!62201 (_ BitVec 32) List!20853) Bool)

(assert (=> b!986248 (= lt!437428 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20850))))

(declare-fun b!986249 () Bool)

(declare-fun res!659983 () Bool)

(assert (=> b!986249 (=> (not res!659983) (not e!556096))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62201 (_ BitVec 32)) Bool)

(assert (=> b!986249 (= res!659983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986250 () Bool)

(declare-fun e!556100 () Bool)

(declare-fun tp_is_empty!23125 () Bool)

(assert (=> b!986250 (= e!556100 tp_is_empty!23125)))

(declare-fun b!986251 () Bool)

(declare-fun res!659984 () Bool)

(assert (=> b!986251 (=> (not res!659984) (not e!556096))))

(declare-datatypes ((V!35817 0))(
  ( (V!35818 (val!11613 Int)) )
))
(declare-datatypes ((ValueCell!11081 0))(
  ( (ValueCellFull!11081 (v!14175 V!35817)) (EmptyCell!11081) )
))
(declare-datatypes ((array!62203 0))(
  ( (array!62204 (arr!29955 (Array (_ BitVec 32) ValueCell!11081)) (size!30435 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62203)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986251 (= res!659984 (and (= (size!30435 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30434 _keys!1544) (size!30435 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36716 () Bool)

(declare-fun mapRes!36716 () Bool)

(declare-fun tp!69572 () Bool)

(declare-fun e!556099 () Bool)

(assert (=> mapNonEmpty!36716 (= mapRes!36716 (and tp!69572 e!556099))))

(declare-fun mapRest!36716 () (Array (_ BitVec 32) ValueCell!11081))

(declare-fun mapKey!36716 () (_ BitVec 32))

(declare-fun mapValue!36716 () ValueCell!11081)

(assert (=> mapNonEmpty!36716 (= (arr!29955 _values!1278) (store mapRest!36716 mapKey!36716 mapValue!36716))))

(declare-fun res!659985 () Bool)

(assert (=> start!84350 (=> (not res!659985) (not e!556096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84350 (= res!659985 (validMask!0 mask!1948))))

(assert (=> start!84350 e!556096))

(assert (=> start!84350 true))

(declare-fun e!556097 () Bool)

(declare-fun array_inv!23015 (array!62203) Bool)

(assert (=> start!84350 (and (array_inv!23015 _values!1278) e!556097)))

(declare-fun array_inv!23016 (array!62201) Bool)

(assert (=> start!84350 (array_inv!23016 _keys!1544)))

(declare-fun b!986252 () Bool)

(assert (=> b!986252 (= e!556099 tp_is_empty!23125)))

(declare-fun b!986253 () Bool)

(assert (=> b!986253 (= e!556097 (and e!556100 mapRes!36716))))

(declare-fun condMapEmpty!36716 () Bool)

(declare-fun mapDefault!36716 () ValueCell!11081)

