; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84656 () Bool)

(assert start!84656)

(declare-fun b_free!20053 () Bool)

(declare-fun b_next!20053 () Bool)

(assert (=> start!84656 (= b_free!20053 (not b_next!20053))))

(declare-fun tp!69951 () Bool)

(declare-fun b_and!32203 () Bool)

(assert (=> start!84656 (= tp!69951 b_and!32203)))

(declare-fun b!989585 () Bool)

(declare-fun res!661853 () Bool)

(declare-fun e!558041 () Bool)

(assert (=> b!989585 (=> (not res!661853) (not e!558041))))

(declare-datatypes ((array!62487 0))(
  ( (array!62488 (arr!30092 (Array (_ BitVec 32) (_ BitVec 64))) (size!30572 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62487)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989585 (= res!661853 (validKeyInArray!0 (select (arr!30092 _keys!1544) from!1932)))))

(declare-fun b!989586 () Bool)

(declare-fun res!661855 () Bool)

(assert (=> b!989586 (=> (not res!661855) (not e!558041))))

(declare-datatypes ((List!20939 0))(
  ( (Nil!20936) (Cons!20935 (h!22097 (_ BitVec 64)) (t!29904 List!20939)) )
))
(declare-fun arrayNoDuplicates!0 (array!62487 (_ BitVec 32) List!20939) Bool)

(assert (=> b!989586 (= res!661855 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20936))))

(declare-fun b!989587 () Bool)

(declare-fun e!558040 () Bool)

(declare-fun e!558044 () Bool)

(declare-fun mapRes!36949 () Bool)

(assert (=> b!989587 (= e!558040 (and e!558044 mapRes!36949))))

(declare-fun condMapEmpty!36949 () Bool)

(declare-datatypes ((V!36009 0))(
  ( (V!36010 (val!11685 Int)) )
))
(declare-datatypes ((ValueCell!11153 0))(
  ( (ValueCellFull!11153 (v!14255 V!36009)) (EmptyCell!11153) )
))
(declare-datatypes ((array!62489 0))(
  ( (array!62490 (arr!30093 (Array (_ BitVec 32) ValueCell!11153)) (size!30573 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62489)

(declare-fun mapDefault!36949 () ValueCell!11153)

