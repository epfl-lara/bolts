; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84396 () Bool)

(assert start!84396)

(declare-fun mapNonEmpty!36785 () Bool)

(declare-fun mapRes!36785 () Bool)

(declare-fun tp!69641 () Bool)

(declare-fun e!556443 () Bool)

(assert (=> mapNonEmpty!36785 (= mapRes!36785 (and tp!69641 e!556443))))

(declare-datatypes ((V!35877 0))(
  ( (V!35878 (val!11636 Int)) )
))
(declare-datatypes ((ValueCell!11104 0))(
  ( (ValueCellFull!11104 (v!14198 V!35877)) (EmptyCell!11104) )
))
(declare-datatypes ((array!62289 0))(
  ( (array!62290 (arr!29998 (Array (_ BitVec 32) ValueCell!11104)) (size!30478 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62289)

(declare-fun mapKey!36785 () (_ BitVec 32))

(declare-fun mapValue!36785 () ValueCell!11104)

(declare-fun mapRest!36785 () (Array (_ BitVec 32) ValueCell!11104))

(assert (=> mapNonEmpty!36785 (= (arr!29998 _values!1278) (store mapRest!36785 mapKey!36785 mapValue!36785))))

(declare-fun b!986689 () Bool)

(declare-fun res!660217 () Bool)

(declare-fun e!556444 () Bool)

(assert (=> b!986689 (=> (not res!660217) (not e!556444))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62291 0))(
  ( (array!62292 (arr!29999 (Array (_ BitVec 32) (_ BitVec 64))) (size!30479 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62291)

(assert (=> b!986689 (= res!660217 (and (= (size!30478 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30479 _keys!1544) (size!30478 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986690 () Bool)

(declare-fun tp_is_empty!23171 () Bool)

(assert (=> b!986690 (= e!556443 tp_is_empty!23171)))

(declare-fun b!986691 () Bool)

(declare-fun e!556442 () Bool)

(assert (=> b!986691 (= e!556442 tp_is_empty!23171)))

(declare-fun b!986692 () Bool)

(declare-fun res!660218 () Bool)

(assert (=> b!986692 (=> (not res!660218) (not e!556444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62291 (_ BitVec 32)) Bool)

(assert (=> b!986692 (= res!660218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986693 () Bool)

(assert (=> b!986693 (= e!556444 false)))

(declare-fun lt!437497 () Bool)

(declare-datatypes ((List!20869 0))(
  ( (Nil!20866) (Cons!20865 (h!22027 (_ BitVec 64)) (t!29776 List!20869)) )
))
(declare-fun arrayNoDuplicates!0 (array!62291 (_ BitVec 32) List!20869) Bool)

(assert (=> b!986693 (= lt!437497 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20866))))

(declare-fun b!986694 () Bool)

(declare-fun e!556441 () Bool)

(assert (=> b!986694 (= e!556441 (and e!556442 mapRes!36785))))

(declare-fun condMapEmpty!36785 () Bool)

(declare-fun mapDefault!36785 () ValueCell!11104)

