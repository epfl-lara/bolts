; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100262 () Bool)

(assert start!100262)

(declare-fun b!1195217 () Bool)

(declare-fun res!795385 () Bool)

(declare-fun e!679238 () Bool)

(assert (=> b!1195217 (=> (not res!795385) (not e!679238))))

(declare-datatypes ((array!77350 0))(
  ( (array!77351 (arr!37318 (Array (_ BitVec 32) (_ BitVec 64))) (size!37855 (_ BitVec 32))) )
))
(declare-fun lt!542849 () array!77350)

(declare-datatypes ((List!26436 0))(
  ( (Nil!26433) (Cons!26432 (h!27641 (_ BitVec 64)) (t!39114 List!26436)) )
))
(declare-fun arrayNoDuplicates!0 (array!77350 (_ BitVec 32) List!26436) Bool)

(assert (=> b!1195217 (= res!795385 (arrayNoDuplicates!0 lt!542849 #b00000000000000000000000000000000 Nil!26433))))

(declare-fun b!1195218 () Bool)

(declare-fun e!679235 () Bool)

(declare-fun tp_is_empty!30293 () Bool)

(assert (=> b!1195218 (= e!679235 tp_is_empty!30293)))

(declare-fun b!1195219 () Bool)

(declare-fun res!795391 () Bool)

(declare-fun e!679237 () Bool)

(assert (=> b!1195219 (=> (not res!795391) (not e!679237))))

(declare-fun _keys!1208 () array!77350)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45517 0))(
  ( (V!45518 (val!15203 Int)) )
))
(declare-datatypes ((ValueCell!14437 0))(
  ( (ValueCellFull!14437 (v!17842 V!45517)) (EmptyCell!14437) )
))
(declare-datatypes ((array!77352 0))(
  ( (array!77353 (arr!37319 (Array (_ BitVec 32) ValueCell!14437)) (size!37856 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77352)

(assert (=> b!1195219 (= res!795391 (and (= (size!37856 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37855 _keys!1208) (size!37856 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195220 () Bool)

(declare-fun res!795382 () Bool)

(assert (=> b!1195220 (=> (not res!795382) (not e!679237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77350 (_ BitVec 32)) Bool)

(assert (=> b!1195220 (= res!795382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195221 () Bool)

(declare-fun res!795390 () Bool)

(assert (=> b!1195221 (=> (not res!795390) (not e!679237))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1195221 (= res!795390 (= (select (arr!37318 _keys!1208) i!673) k!934))))

(declare-fun b!1195222 () Bool)

(declare-fun res!795389 () Bool)

(assert (=> b!1195222 (=> (not res!795389) (not e!679237))))

(assert (=> b!1195222 (= res!795389 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26433))))

(declare-fun b!1195223 () Bool)

(declare-fun res!795387 () Bool)

(assert (=> b!1195223 (=> (not res!795387) (not e!679237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195223 (= res!795387 (validMask!0 mask!1564))))

(declare-fun b!1195224 () Bool)

(declare-fun e!679239 () Bool)

(assert (=> b!1195224 (= e!679239 tp_is_empty!30293)))

(declare-fun b!1195225 () Bool)

(assert (=> b!1195225 (= e!679238 (not true))))

(declare-fun arrayContainsKey!0 (array!77350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195225 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39568 0))(
  ( (Unit!39569) )
))
(declare-fun lt!542850 () Unit!39568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77350 (_ BitVec 64) (_ BitVec 32)) Unit!39568)

(assert (=> b!1195225 (= lt!542850 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!795384 () Bool)

(assert (=> start!100262 (=> (not res!795384) (not e!679237))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100262 (= res!795384 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37855 _keys!1208))))))

(assert (=> start!100262 e!679237))

(declare-fun array_inv!28344 (array!77350) Bool)

(assert (=> start!100262 (array_inv!28344 _keys!1208)))

(assert (=> start!100262 true))

(declare-fun e!679236 () Bool)

(declare-fun array_inv!28345 (array!77352) Bool)

(assert (=> start!100262 (and (array_inv!28345 _values!996) e!679236)))

(declare-fun b!1195226 () Bool)

(assert (=> b!1195226 (= e!679237 e!679238)))

(declare-fun res!795383 () Bool)

(assert (=> b!1195226 (=> (not res!795383) (not e!679238))))

(assert (=> b!1195226 (= res!795383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542849 mask!1564))))

(assert (=> b!1195226 (= lt!542849 (array!77351 (store (arr!37318 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37855 _keys!1208)))))

(declare-fun b!1195227 () Bool)

(declare-fun res!795388 () Bool)

(assert (=> b!1195227 (=> (not res!795388) (not e!679237))))

(assert (=> b!1195227 (= res!795388 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37855 _keys!1208))))))

(declare-fun mapIsEmpty!47276 () Bool)

(declare-fun mapRes!47276 () Bool)

(assert (=> mapIsEmpty!47276 mapRes!47276))

(declare-fun mapNonEmpty!47276 () Bool)

(declare-fun tp!89887 () Bool)

(assert (=> mapNonEmpty!47276 (= mapRes!47276 (and tp!89887 e!679235))))

(declare-fun mapRest!47276 () (Array (_ BitVec 32) ValueCell!14437))

(declare-fun mapValue!47276 () ValueCell!14437)

(declare-fun mapKey!47276 () (_ BitVec 32))

(assert (=> mapNonEmpty!47276 (= (arr!37319 _values!996) (store mapRest!47276 mapKey!47276 mapValue!47276))))

(declare-fun b!1195228 () Bool)

(assert (=> b!1195228 (= e!679236 (and e!679239 mapRes!47276))))

(declare-fun condMapEmpty!47276 () Bool)

(declare-fun mapDefault!47276 () ValueCell!14437)

