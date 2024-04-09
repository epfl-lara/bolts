; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84346 () Bool)

(assert start!84346)

(declare-fun b!986212 () Bool)

(declare-fun e!556067 () Bool)

(declare-fun tp_is_empty!23121 () Bool)

(assert (=> b!986212 (= e!556067 tp_is_empty!23121)))

(declare-fun b!986213 () Bool)

(declare-fun e!556069 () Bool)

(declare-fun mapRes!36710 () Bool)

(assert (=> b!986213 (= e!556069 (and e!556067 mapRes!36710))))

(declare-fun condMapEmpty!36710 () Bool)

(declare-datatypes ((V!35811 0))(
  ( (V!35812 (val!11611 Int)) )
))
(declare-datatypes ((ValueCell!11079 0))(
  ( (ValueCellFull!11079 (v!14173 V!35811)) (EmptyCell!11079) )
))
(declare-datatypes ((array!62193 0))(
  ( (array!62194 (arr!29950 (Array (_ BitVec 32) ValueCell!11079)) (size!30430 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62193)

(declare-fun mapDefault!36710 () ValueCell!11079)

(assert (=> b!986213 (= condMapEmpty!36710 (= (arr!29950 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11079)) mapDefault!36710)))))

(declare-fun b!986214 () Bool)

(declare-fun res!659967 () Bool)

(declare-fun e!556068 () Bool)

(assert (=> b!986214 (=> (not res!659967) (not e!556068))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62195 0))(
  ( (array!62196 (arr!29951 (Array (_ BitVec 32) (_ BitVec 64))) (size!30431 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62195)

(assert (=> b!986214 (= res!659967 (and (= (size!30430 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30431 _keys!1544) (size!30430 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986215 () Bool)

(assert (=> b!986215 (= e!556068 false)))

(declare-fun lt!437422 () Bool)

(declare-datatypes ((List!20852 0))(
  ( (Nil!20849) (Cons!20848 (h!22010 (_ BitVec 64)) (t!29759 List!20852)) )
))
(declare-fun arrayNoDuplicates!0 (array!62195 (_ BitVec 32) List!20852) Bool)

(assert (=> b!986215 (= lt!437422 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20849))))

(declare-fun mapNonEmpty!36710 () Bool)

(declare-fun tp!69566 () Bool)

(declare-fun e!556066 () Bool)

(assert (=> mapNonEmpty!36710 (= mapRes!36710 (and tp!69566 e!556066))))

(declare-fun mapValue!36710 () ValueCell!11079)

(declare-fun mapRest!36710 () (Array (_ BitVec 32) ValueCell!11079))

(declare-fun mapKey!36710 () (_ BitVec 32))

(assert (=> mapNonEmpty!36710 (= (arr!29950 _values!1278) (store mapRest!36710 mapKey!36710 mapValue!36710))))

(declare-fun mapIsEmpty!36710 () Bool)

(assert (=> mapIsEmpty!36710 mapRes!36710))

(declare-fun res!659966 () Bool)

(assert (=> start!84346 (=> (not res!659966) (not e!556068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84346 (= res!659966 (validMask!0 mask!1948))))

(assert (=> start!84346 e!556068))

(assert (=> start!84346 true))

(declare-fun array_inv!23011 (array!62193) Bool)

(assert (=> start!84346 (and (array_inv!23011 _values!1278) e!556069)))

(declare-fun array_inv!23012 (array!62195) Bool)

(assert (=> start!84346 (array_inv!23012 _keys!1544)))

(declare-fun b!986216 () Bool)

(declare-fun res!659965 () Bool)

(assert (=> b!986216 (=> (not res!659965) (not e!556068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62195 (_ BitVec 32)) Bool)

(assert (=> b!986216 (= res!659965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986217 () Bool)

(assert (=> b!986217 (= e!556066 tp_is_empty!23121)))

(assert (= (and start!84346 res!659966) b!986214))

(assert (= (and b!986214 res!659967) b!986216))

(assert (= (and b!986216 res!659965) b!986215))

(assert (= (and b!986213 condMapEmpty!36710) mapIsEmpty!36710))

(assert (= (and b!986213 (not condMapEmpty!36710)) mapNonEmpty!36710))

(get-info :version)

(assert (= (and mapNonEmpty!36710 ((_ is ValueCellFull!11079) mapValue!36710)) b!986217))

(assert (= (and b!986213 ((_ is ValueCellFull!11079) mapDefault!36710)) b!986212))

(assert (= start!84346 b!986213))

(declare-fun m!913175 () Bool)

(assert (=> b!986215 m!913175))

(declare-fun m!913177 () Bool)

(assert (=> mapNonEmpty!36710 m!913177))

(declare-fun m!913179 () Bool)

(assert (=> start!84346 m!913179))

(declare-fun m!913181 () Bool)

(assert (=> start!84346 m!913181))

(declare-fun m!913183 () Bool)

(assert (=> start!84346 m!913183))

(declare-fun m!913185 () Bool)

(assert (=> b!986216 m!913185))

(check-sat (not start!84346) tp_is_empty!23121 (not mapNonEmpty!36710) (not b!986216) (not b!986215))
(check-sat)
