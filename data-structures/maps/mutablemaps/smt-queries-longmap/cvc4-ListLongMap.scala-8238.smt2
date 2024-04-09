; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100398 () Bool)

(assert start!100398)

(declare-fun b!1197736 () Bool)

(declare-fun e!680442 () Bool)

(declare-fun e!680440 () Bool)

(assert (=> b!1197736 (= e!680442 e!680440)))

(declare-fun res!797199 () Bool)

(assert (=> b!1197736 (=> (not res!797199) (not e!680440))))

(declare-datatypes ((array!77574 0))(
  ( (array!77575 (arr!37429 (Array (_ BitVec 32) (_ BitVec 64))) (size!37966 (_ BitVec 32))) )
))
(declare-fun lt!543299 () array!77574)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77574 (_ BitVec 32)) Bool)

(assert (=> b!1197736 (= res!797199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543299 mask!1564))))

(declare-fun _keys!1208 () array!77574)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197736 (= lt!543299 (array!77575 (store (arr!37429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37966 _keys!1208)))))

(declare-fun b!1197737 () Bool)

(declare-fun e!680444 () Bool)

(declare-fun e!680439 () Bool)

(declare-fun mapRes!47450 () Bool)

(assert (=> b!1197737 (= e!680444 (and e!680439 mapRes!47450))))

(declare-fun condMapEmpty!47450 () Bool)

(declare-datatypes ((V!45669 0))(
  ( (V!45670 (val!15260 Int)) )
))
(declare-datatypes ((ValueCell!14494 0))(
  ( (ValueCellFull!14494 (v!17899 V!45669)) (EmptyCell!14494) )
))
(declare-datatypes ((array!77576 0))(
  ( (array!77577 (arr!37430 (Array (_ BitVec 32) ValueCell!14494)) (size!37967 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77576)

(declare-fun mapDefault!47450 () ValueCell!14494)

