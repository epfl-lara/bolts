; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99908 () Bool)

(assert start!99908)

(declare-fun b_free!25451 () Bool)

(declare-fun b_next!25451 () Bool)

(assert (=> start!99908 (= b_free!25451 (not b_next!25451))))

(declare-fun tp!89067 () Bool)

(declare-fun b_and!41783 () Bool)

(assert (=> start!99908 (= tp!89067 b_and!41783)))

(declare-fun b!1188203 () Bool)

(declare-fun res!790096 () Bool)

(declare-fun e!675652 () Bool)

(assert (=> b!1188203 (=> (not res!790096) (not e!675652))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188203 (= res!790096 (validKeyInArray!0 k!934))))

(declare-fun res!790102 () Bool)

(assert (=> start!99908 (=> (not res!790102) (not e!675652))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76730 0))(
  ( (array!76731 (arr!37011 (Array (_ BitVec 32) (_ BitVec 64))) (size!37548 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76730)

(assert (=> start!99908 (= res!790102 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37548 _keys!1208))))))

(assert (=> start!99908 e!675652))

(declare-fun tp_is_empty!29981 () Bool)

(assert (=> start!99908 tp_is_empty!29981))

(declare-fun array_inv!28124 (array!76730) Bool)

(assert (=> start!99908 (array_inv!28124 _keys!1208)))

(assert (=> start!99908 true))

(assert (=> start!99908 tp!89067))

(declare-datatypes ((V!45101 0))(
  ( (V!45102 (val!15047 Int)) )
))
(declare-datatypes ((ValueCell!14281 0))(
  ( (ValueCellFull!14281 (v!17686 V!45101)) (EmptyCell!14281) )
))
(declare-datatypes ((array!76732 0))(
  ( (array!76733 (arr!37012 (Array (_ BitVec 32) ValueCell!14281)) (size!37549 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76732)

(declare-fun e!675660 () Bool)

(declare-fun array_inv!28125 (array!76732) Bool)

(assert (=> start!99908 (and (array_inv!28125 _values!996) e!675660)))

(declare-fun b!1188204 () Bool)

(declare-fun res!790099 () Bool)

(assert (=> b!1188204 (=> (not res!790099) (not e!675652))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188204 (= res!790099 (validMask!0 mask!1564))))

(declare-fun e!675651 () Bool)

(declare-fun b!1188205 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!76730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188205 (= e!675651 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188206 () Bool)

(declare-fun res!790104 () Bool)

(assert (=> b!1188206 (=> (not res!790104) (not e!675652))))

(declare-datatypes ((List!26210 0))(
  ( (Nil!26207) (Cons!26206 (h!27415 (_ BitVec 64)) (t!38660 List!26210)) )
))
(declare-fun arrayNoDuplicates!0 (array!76730 (_ BitVec 32) List!26210) Bool)

(assert (=> b!1188206 (= res!790104 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26207))))

(declare-fun b!1188207 () Bool)

(declare-fun res!790095 () Bool)

(assert (=> b!1188207 (=> (not res!790095) (not e!675652))))

(assert (=> b!1188207 (= res!790095 (= (select (arr!37011 _keys!1208) i!673) k!934))))

(declare-fun b!1188208 () Bool)

(declare-fun e!675655 () Bool)

(assert (=> b!1188208 (= e!675655 tp_is_empty!29981)))

(declare-fun b!1188209 () Bool)

(declare-datatypes ((Unit!39349 0))(
  ( (Unit!39350) )
))
(declare-fun e!675661 () Unit!39349)

(declare-fun Unit!39351 () Unit!39349)

(assert (=> b!1188209 (= e!675661 Unit!39351)))

(declare-fun b!1188210 () Bool)

(declare-fun res!790094 () Bool)

(assert (=> b!1188210 (=> (not res!790094) (not e!675652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76730 (_ BitVec 32)) Bool)

(assert (=> b!1188210 (= res!790094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188211 () Bool)

(declare-fun res!790100 () Bool)

(assert (=> b!1188211 (=> (not res!790100) (not e!675652))))

(assert (=> b!1188211 (= res!790100 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37548 _keys!1208))))))

(declare-fun b!1188212 () Bool)

(declare-fun res!790105 () Bool)

(assert (=> b!1188212 (=> (not res!790105) (not e!675652))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1188212 (= res!790105 (and (= (size!37549 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37548 _keys!1208) (size!37549 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188213 () Bool)

(declare-fun mapRes!46799 () Bool)

(assert (=> b!1188213 (= e!675660 (and e!675655 mapRes!46799))))

(declare-fun condMapEmpty!46799 () Bool)

(declare-fun mapDefault!46799 () ValueCell!14281)

