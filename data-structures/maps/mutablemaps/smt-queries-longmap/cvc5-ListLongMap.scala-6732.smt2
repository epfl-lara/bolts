; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84392 () Bool)

(assert start!84392)

(declare-fun mapIsEmpty!36779 () Bool)

(declare-fun mapRes!36779 () Bool)

(assert (=> mapIsEmpty!36779 mapRes!36779))

(declare-fun b!986653 () Bool)

(declare-fun e!556412 () Bool)

(declare-fun tp_is_empty!23167 () Bool)

(assert (=> b!986653 (= e!556412 tp_is_empty!23167)))

(declare-fun b!986654 () Bool)

(declare-fun res!660200 () Bool)

(declare-fun e!556415 () Bool)

(assert (=> b!986654 (=> (not res!660200) (not e!556415))))

(declare-datatypes ((array!62281 0))(
  ( (array!62282 (arr!29994 (Array (_ BitVec 32) (_ BitVec 64))) (size!30474 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62281)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62281 (_ BitVec 32)) Bool)

(assert (=> b!986654 (= res!660200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986655 () Bool)

(declare-fun res!660199 () Bool)

(assert (=> b!986655 (=> (not res!660199) (not e!556415))))

(declare-datatypes ((V!35873 0))(
  ( (V!35874 (val!11634 Int)) )
))
(declare-datatypes ((ValueCell!11102 0))(
  ( (ValueCellFull!11102 (v!14196 V!35873)) (EmptyCell!11102) )
))
(declare-datatypes ((array!62283 0))(
  ( (array!62284 (arr!29995 (Array (_ BitVec 32) ValueCell!11102)) (size!30475 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62283)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986655 (= res!660199 (and (= (size!30475 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30474 _keys!1544) (size!30475 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36779 () Bool)

(declare-fun tp!69635 () Bool)

(declare-fun e!556411 () Bool)

(assert (=> mapNonEmpty!36779 (= mapRes!36779 (and tp!69635 e!556411))))

(declare-fun mapValue!36779 () ValueCell!11102)

(declare-fun mapKey!36779 () (_ BitVec 32))

(declare-fun mapRest!36779 () (Array (_ BitVec 32) ValueCell!11102))

(assert (=> mapNonEmpty!36779 (= (arr!29995 _values!1278) (store mapRest!36779 mapKey!36779 mapValue!36779))))

(declare-fun b!986657 () Bool)

(assert (=> b!986657 (= e!556411 tp_is_empty!23167)))

(declare-fun b!986658 () Bool)

(assert (=> b!986658 (= e!556415 false)))

(declare-fun lt!437491 () Bool)

(declare-datatypes ((List!20867 0))(
  ( (Nil!20864) (Cons!20863 (h!22025 (_ BitVec 64)) (t!29774 List!20867)) )
))
(declare-fun arrayNoDuplicates!0 (array!62281 (_ BitVec 32) List!20867) Bool)

(assert (=> b!986658 (= lt!437491 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20864))))

(declare-fun b!986656 () Bool)

(declare-fun e!556414 () Bool)

(assert (=> b!986656 (= e!556414 (and e!556412 mapRes!36779))))

(declare-fun condMapEmpty!36779 () Bool)

(declare-fun mapDefault!36779 () ValueCell!11102)

