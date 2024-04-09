; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84762 () Bool)

(assert start!84762)

(declare-fun b_free!20089 () Bool)

(declare-fun b_next!20089 () Bool)

(assert (=> start!84762 (= b_free!20089 (not b_next!20089))))

(declare-fun tp!70066 () Bool)

(declare-fun b_and!32277 () Bool)

(assert (=> start!84762 (= tp!70066 b_and!32277)))

(declare-fun b!990738 () Bool)

(declare-fun res!662495 () Bool)

(declare-fun e!558698 () Bool)

(assert (=> b!990738 (=> (not res!662495) (not e!558698))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62561 0))(
  ( (array!62562 (arr!30127 (Array (_ BitVec 32) (_ BitVec 64))) (size!30607 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62561)

(assert (=> b!990738 (= res!662495 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30607 _keys!1544))))))

(declare-fun b!990739 () Bool)

(declare-fun res!662497 () Bool)

(assert (=> b!990739 (=> (not res!662497) (not e!558698))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62561 (_ BitVec 32)) Bool)

(assert (=> b!990739 (= res!662497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990740 () Bool)

(declare-fun res!662494 () Bool)

(assert (=> b!990740 (=> (not res!662494) (not e!558698))))

(declare-datatypes ((List!20969 0))(
  ( (Nil!20966) (Cons!20965 (h!22127 (_ BitVec 64)) (t!29954 List!20969)) )
))
(declare-fun arrayNoDuplicates!0 (array!62561 (_ BitVec 32) List!20969) Bool)

(assert (=> b!990740 (= res!662494 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20966))))

(declare-fun b!990741 () Bool)

(declare-fun e!558703 () Bool)

(declare-fun e!558699 () Bool)

(declare-fun mapRes!37010 () Bool)

(assert (=> b!990741 (= e!558703 (and e!558699 mapRes!37010))))

(declare-fun condMapEmpty!37010 () Bool)

(declare-datatypes ((V!36057 0))(
  ( (V!36058 (val!11703 Int)) )
))
(declare-datatypes ((ValueCell!11171 0))(
  ( (ValueCellFull!11171 (v!14276 V!36057)) (EmptyCell!11171) )
))
(declare-datatypes ((array!62563 0))(
  ( (array!62564 (arr!30128 (Array (_ BitVec 32) ValueCell!11171)) (size!30608 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62563)

(declare-fun mapDefault!37010 () ValueCell!11171)

