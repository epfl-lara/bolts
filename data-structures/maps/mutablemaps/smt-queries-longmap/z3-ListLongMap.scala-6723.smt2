; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84340 () Bool)

(assert start!84340)

(declare-fun b!986158 () Bool)

(declare-fun e!556021 () Bool)

(declare-fun e!556022 () Bool)

(declare-fun mapRes!36701 () Bool)

(assert (=> b!986158 (= e!556021 (and e!556022 mapRes!36701))))

(declare-fun condMapEmpty!36701 () Bool)

(declare-datatypes ((V!35803 0))(
  ( (V!35804 (val!11608 Int)) )
))
(declare-datatypes ((ValueCell!11076 0))(
  ( (ValueCellFull!11076 (v!14170 V!35803)) (EmptyCell!11076) )
))
(declare-datatypes ((array!62181 0))(
  ( (array!62182 (arr!29944 (Array (_ BitVec 32) ValueCell!11076)) (size!30424 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62181)

(declare-fun mapDefault!36701 () ValueCell!11076)

(assert (=> b!986158 (= condMapEmpty!36701 (= (arr!29944 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11076)) mapDefault!36701)))))

(declare-fun b!986159 () Bool)

(declare-fun tp_is_empty!23115 () Bool)

(assert (=> b!986159 (= e!556022 tp_is_empty!23115)))

(declare-fun b!986160 () Bool)

(declare-fun res!659939 () Bool)

(declare-fun e!556023 () Bool)

(assert (=> b!986160 (=> (not res!659939) (not e!556023))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62183 0))(
  ( (array!62184 (arr!29945 (Array (_ BitVec 32) (_ BitVec 64))) (size!30425 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62183)

(assert (=> b!986160 (= res!659939 (and (= (size!30424 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30425 _keys!1544) (size!30424 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986161 () Bool)

(assert (=> b!986161 (= e!556023 false)))

(declare-fun lt!437413 () Bool)

(declare-datatypes ((List!20849 0))(
  ( (Nil!20846) (Cons!20845 (h!22007 (_ BitVec 64)) (t!29756 List!20849)) )
))
(declare-fun arrayNoDuplicates!0 (array!62183 (_ BitVec 32) List!20849) Bool)

(assert (=> b!986161 (= lt!437413 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20846))))

(declare-fun res!659940 () Bool)

(assert (=> start!84340 (=> (not res!659940) (not e!556023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84340 (= res!659940 (validMask!0 mask!1948))))

(assert (=> start!84340 e!556023))

(assert (=> start!84340 true))

(declare-fun array_inv!23007 (array!62181) Bool)

(assert (=> start!84340 (and (array_inv!23007 _values!1278) e!556021)))

(declare-fun array_inv!23008 (array!62183) Bool)

(assert (=> start!84340 (array_inv!23008 _keys!1544)))

(declare-fun b!986162 () Bool)

(declare-fun e!556024 () Bool)

(assert (=> b!986162 (= e!556024 tp_is_empty!23115)))

(declare-fun b!986163 () Bool)

(declare-fun res!659938 () Bool)

(assert (=> b!986163 (=> (not res!659938) (not e!556023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62183 (_ BitVec 32)) Bool)

(assert (=> b!986163 (= res!659938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36701 () Bool)

(declare-fun tp!69557 () Bool)

(assert (=> mapNonEmpty!36701 (= mapRes!36701 (and tp!69557 e!556024))))

(declare-fun mapValue!36701 () ValueCell!11076)

(declare-fun mapKey!36701 () (_ BitVec 32))

(declare-fun mapRest!36701 () (Array (_ BitVec 32) ValueCell!11076))

(assert (=> mapNonEmpty!36701 (= (arr!29944 _values!1278) (store mapRest!36701 mapKey!36701 mapValue!36701))))

(declare-fun mapIsEmpty!36701 () Bool)

(assert (=> mapIsEmpty!36701 mapRes!36701))

(assert (= (and start!84340 res!659940) b!986160))

(assert (= (and b!986160 res!659939) b!986163))

(assert (= (and b!986163 res!659938) b!986161))

(assert (= (and b!986158 condMapEmpty!36701) mapIsEmpty!36701))

(assert (= (and b!986158 (not condMapEmpty!36701)) mapNonEmpty!36701))

(get-info :version)

(assert (= (and mapNonEmpty!36701 ((_ is ValueCellFull!11076) mapValue!36701)) b!986162))

(assert (= (and b!986158 ((_ is ValueCellFull!11076) mapDefault!36701)) b!986159))

(assert (= start!84340 b!986158))

(declare-fun m!913139 () Bool)

(assert (=> b!986161 m!913139))

(declare-fun m!913141 () Bool)

(assert (=> start!84340 m!913141))

(declare-fun m!913143 () Bool)

(assert (=> start!84340 m!913143))

(declare-fun m!913145 () Bool)

(assert (=> start!84340 m!913145))

(declare-fun m!913147 () Bool)

(assert (=> b!986163 m!913147))

(declare-fun m!913149 () Bool)

(assert (=> mapNonEmpty!36701 m!913149))

(check-sat (not mapNonEmpty!36701) (not start!84340) (not b!986161) tp_is_empty!23115 (not b!986163))
(check-sat)
