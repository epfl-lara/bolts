; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84386 () Bool)

(assert start!84386)

(declare-fun b!986578 () Bool)

(declare-fun res!660156 () Bool)

(declare-fun e!556368 () Bool)

(assert (=> b!986578 (=> (not res!660156) (not e!556368))))

(declare-datatypes ((array!62269 0))(
  ( (array!62270 (arr!29988 (Array (_ BitVec 32) (_ BitVec 64))) (size!30468 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62269)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62269 (_ BitVec 32)) Bool)

(assert (=> b!986578 (= res!660156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986579 () Bool)

(declare-fun e!556369 () Bool)

(declare-fun tp_is_empty!23161 () Bool)

(assert (=> b!986579 (= e!556369 tp_is_empty!23161)))

(declare-fun mapNonEmpty!36770 () Bool)

(declare-fun mapRes!36770 () Bool)

(declare-fun tp!69626 () Bool)

(assert (=> mapNonEmpty!36770 (= mapRes!36770 (and tp!69626 e!556369))))

(declare-datatypes ((V!35865 0))(
  ( (V!35866 (val!11631 Int)) )
))
(declare-datatypes ((ValueCell!11099 0))(
  ( (ValueCellFull!11099 (v!14193 V!35865)) (EmptyCell!11099) )
))
(declare-datatypes ((array!62271 0))(
  ( (array!62272 (arr!29989 (Array (_ BitVec 32) ValueCell!11099)) (size!30469 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62271)

(declare-fun mapValue!36770 () ValueCell!11099)

(declare-fun mapRest!36770 () (Array (_ BitVec 32) ValueCell!11099))

(declare-fun mapKey!36770 () (_ BitVec 32))

(assert (=> mapNonEmpty!36770 (= (arr!29989 _values!1278) (store mapRest!36770 mapKey!36770 mapValue!36770))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun lt!437482 () Bool)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun b!986580 () Bool)

(assert (=> b!986580 (= e!556368 (and (or lt!437482 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!437482 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!437482)) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(assert (=> b!986580 (= lt!437482 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!986581 () Bool)

(declare-fun res!660153 () Bool)

(assert (=> b!986581 (=> (not res!660153) (not e!556368))))

(declare-datatypes ((List!20864 0))(
  ( (Nil!20861) (Cons!20860 (h!22022 (_ BitVec 64)) (t!29771 List!20864)) )
))
(declare-fun arrayNoDuplicates!0 (array!62269 (_ BitVec 32) List!20864) Bool)

(assert (=> b!986581 (= res!660153 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20861))))

(declare-fun b!986582 () Bool)

(declare-fun res!660151 () Bool)

(assert (=> b!986582 (=> (not res!660151) (not e!556368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986582 (= res!660151 (validKeyInArray!0 (select (arr!29988 _keys!1544) from!1932)))))

(declare-fun b!986583 () Bool)

(declare-fun e!556370 () Bool)

(declare-fun e!556366 () Bool)

(assert (=> b!986583 (= e!556370 (and e!556366 mapRes!36770))))

(declare-fun condMapEmpty!36770 () Bool)

(declare-fun mapDefault!36770 () ValueCell!11099)

