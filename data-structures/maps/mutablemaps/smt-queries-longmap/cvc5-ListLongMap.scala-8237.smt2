; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100388 () Bool)

(assert start!100388)

(declare-fun b!1197541 () Bool)

(declare-fun e!680351 () Bool)

(declare-fun tp_is_empty!30397 () Bool)

(assert (=> b!1197541 (= e!680351 tp_is_empty!30397)))

(declare-fun b!1197542 () Bool)

(declare-fun res!797044 () Bool)

(declare-fun e!680352 () Bool)

(assert (=> b!1197542 (=> (not res!797044) (not e!680352))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197542 (= res!797044 (validKeyInArray!0 k!934))))

(declare-fun b!1197543 () Bool)

(declare-fun e!680353 () Bool)

(assert (=> b!1197543 (= e!680352 e!680353)))

(declare-fun res!797041 () Bool)

(assert (=> b!1197543 (=> (not res!797041) (not e!680353))))

(declare-datatypes ((array!77554 0))(
  ( (array!77555 (arr!37419 (Array (_ BitVec 32) (_ BitVec 64))) (size!37956 (_ BitVec 32))) )
))
(declare-fun lt!543269 () array!77554)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77554 (_ BitVec 32)) Bool)

(assert (=> b!1197543 (= res!797041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543269 mask!1564))))

(declare-fun _keys!1208 () array!77554)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197543 (= lt!543269 (array!77555 (store (arr!37419 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37956 _keys!1208)))))

(declare-fun b!1197544 () Bool)

(declare-fun e!680350 () Bool)

(declare-fun mapRes!47435 () Bool)

(assert (=> b!1197544 (= e!680350 (and e!680351 mapRes!47435))))

(declare-fun condMapEmpty!47435 () Bool)

(declare-datatypes ((V!45657 0))(
  ( (V!45658 (val!15255 Int)) )
))
(declare-datatypes ((ValueCell!14489 0))(
  ( (ValueCellFull!14489 (v!17894 V!45657)) (EmptyCell!14489) )
))
(declare-datatypes ((array!77556 0))(
  ( (array!77557 (arr!37420 (Array (_ BitVec 32) ValueCell!14489)) (size!37957 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77556)

(declare-fun mapDefault!47435 () ValueCell!14489)

