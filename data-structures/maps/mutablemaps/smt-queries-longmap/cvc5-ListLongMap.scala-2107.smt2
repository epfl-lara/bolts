; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35818 () Bool)

(assert start!35818)

(declare-fun b!359485 () Bool)

(declare-fun res!199867 () Bool)

(declare-fun e!220241 () Bool)

(assert (=> b!359485 (=> (not res!199867) (not e!220241))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!20047 0))(
  ( (array!20048 (arr!9514 (Array (_ BitVec 32) (_ BitVec 64))) (size!9866 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20047)

(assert (=> b!359485 (= res!199867 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9866 _keys!1456))))))

(declare-fun res!199864 () Bool)

(assert (=> start!35818 (=> (not res!199864) (not e!220241))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35818 (= res!199864 (validMask!0 mask!1842))))

(assert (=> start!35818 e!220241))

(declare-fun tp_is_empty!8263 () Bool)

(assert (=> start!35818 tp_is_empty!8263))

(assert (=> start!35818 true))

(declare-fun array_inv!7004 (array!20047) Bool)

(assert (=> start!35818 (array_inv!7004 _keys!1456)))

(declare-datatypes ((V!11995 0))(
  ( (V!11996 (val!4176 Int)) )
))
(declare-datatypes ((ValueCell!3788 0))(
  ( (ValueCellFull!3788 (v!6366 V!11995)) (EmptyCell!3788) )
))
(declare-datatypes ((array!20049 0))(
  ( (array!20050 (arr!9515 (Array (_ BitVec 32) ValueCell!3788)) (size!9867 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20049)

(declare-fun e!220240 () Bool)

(declare-fun array_inv!7005 (array!20049) Bool)

(assert (=> start!35818 (and (array_inv!7005 _values!1208) e!220240)))

(declare-fun b!359486 () Bool)

(declare-fun res!199865 () Bool)

(assert (=> b!359486 (=> (not res!199865) (not e!220241))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!359486 (= res!199865 (not (= (select (arr!9514 _keys!1456) from!1805) k!1077)))))

(declare-fun b!359487 () Bool)

(declare-fun res!199868 () Bool)

(assert (=> b!359487 (=> (not res!199868) (not e!220241))))

(declare-fun arrayContainsKey!0 (array!20047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359487 (= res!199868 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!359488 () Bool)

(declare-fun e!220237 () Bool)

(assert (=> b!359488 (= e!220237 tp_is_empty!8263)))

(declare-fun mapIsEmpty!13902 () Bool)

(declare-fun mapRes!13902 () Bool)

(assert (=> mapIsEmpty!13902 mapRes!13902))

(declare-fun b!359489 () Bool)

(declare-fun res!199863 () Bool)

(assert (=> b!359489 (=> (not res!199863) (not e!220241))))

(declare-datatypes ((List!5500 0))(
  ( (Nil!5497) (Cons!5496 (h!6352 (_ BitVec 64)) (t!10658 List!5500)) )
))
(declare-fun arrayNoDuplicates!0 (array!20047 (_ BitVec 32) List!5500) Bool)

(assert (=> b!359489 (= res!199863 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5497))))

(declare-fun b!359490 () Bool)

(declare-fun res!199870 () Bool)

(assert (=> b!359490 (=> (not res!199870) (not e!220241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359490 (= res!199870 (validKeyInArray!0 k!1077))))

(declare-fun b!359491 () Bool)

(assert (=> b!359491 (= e!220240 (and e!220237 mapRes!13902))))

(declare-fun condMapEmpty!13902 () Bool)

(declare-fun mapDefault!13902 () ValueCell!3788)

