; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100386 () Bool)

(assert start!100386)

(declare-fun res!797013 () Bool)

(declare-fun e!680336 () Bool)

(assert (=> start!100386 (=> (not res!797013) (not e!680336))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77550 0))(
  ( (array!77551 (arr!37417 (Array (_ BitVec 32) (_ BitVec 64))) (size!37954 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77550)

(assert (=> start!100386 (= res!797013 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37954 _keys!1208))))))

(assert (=> start!100386 e!680336))

(declare-fun array_inv!28422 (array!77550) Bool)

(assert (=> start!100386 (array_inv!28422 _keys!1208)))

(assert (=> start!100386 true))

(declare-datatypes ((V!45653 0))(
  ( (V!45654 (val!15254 Int)) )
))
(declare-datatypes ((ValueCell!14488 0))(
  ( (ValueCellFull!14488 (v!17893 V!45653)) (EmptyCell!14488) )
))
(declare-datatypes ((array!77552 0))(
  ( (array!77553 (arr!37418 (Array (_ BitVec 32) ValueCell!14488)) (size!37955 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77552)

(declare-fun e!680332 () Bool)

(declare-fun array_inv!28423 (array!77552) Bool)

(assert (=> start!100386 (and (array_inv!28423 _values!996) e!680332)))

(declare-fun b!1197502 () Bool)

(declare-fun res!797015 () Bool)

(assert (=> b!1197502 (=> (not res!797015) (not e!680336))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77550 (_ BitVec 32)) Bool)

(assert (=> b!1197502 (= res!797015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197503 () Bool)

(declare-fun res!797012 () Bool)

(assert (=> b!1197503 (=> (not res!797012) (not e!680336))))

(declare-datatypes ((List!26490 0))(
  ( (Nil!26487) (Cons!26486 (h!27695 (_ BitVec 64)) (t!39198 List!26490)) )
))
(declare-fun arrayNoDuplicates!0 (array!77550 (_ BitVec 32) List!26490) Bool)

(assert (=> b!1197503 (= res!797012 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26487))))

(declare-fun b!1197504 () Bool)

(declare-fun res!797014 () Bool)

(assert (=> b!1197504 (=> (not res!797014) (not e!680336))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197504 (= res!797014 (validKeyInArray!0 k!934))))

(declare-fun b!1197505 () Bool)

(declare-fun res!797017 () Bool)

(assert (=> b!1197505 (=> (not res!797017) (not e!680336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197505 (= res!797017 (validMask!0 mask!1564))))

(declare-fun b!1197506 () Bool)

(declare-fun res!797018 () Bool)

(assert (=> b!1197506 (=> (not res!797018) (not e!680336))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197506 (= res!797018 (= (select (arr!37417 _keys!1208) i!673) k!934))))

(declare-fun b!1197507 () Bool)

(declare-fun e!680331 () Bool)

(declare-fun mapRes!47432 () Bool)

(assert (=> b!1197507 (= e!680332 (and e!680331 mapRes!47432))))

(declare-fun condMapEmpty!47432 () Bool)

(declare-fun mapDefault!47432 () ValueCell!14488)

