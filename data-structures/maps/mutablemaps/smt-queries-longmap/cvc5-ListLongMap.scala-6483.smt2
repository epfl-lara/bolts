; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82766 () Bool)

(assert start!82766)

(declare-fun b_free!18871 () Bool)

(declare-fun b_next!18871 () Bool)

(assert (=> start!82766 (= b_free!18871 (not b_next!18871))))

(declare-fun tp!65733 () Bool)

(declare-fun b_and!30377 () Bool)

(assert (=> start!82766 (= tp!65733 b_and!30377)))

(declare-fun b!964853 () Bool)

(declare-fun res!645960 () Bool)

(declare-fun e!543948 () Bool)

(assert (=> b!964853 (=> (not res!645960) (not e!543948))))

(declare-datatypes ((array!59415 0))(
  ( (array!59416 (arr!28572 (Array (_ BitVec 32) (_ BitVec 64))) (size!29052 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59415)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59415 (_ BitVec 32)) Bool)

(assert (=> b!964853 (= res!645960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964854 () Bool)

(declare-fun res!645964 () Bool)

(assert (=> b!964854 (=> (not res!645964) (not e!543948))))

(declare-datatypes ((List!19951 0))(
  ( (Nil!19948) (Cons!19947 (h!21109 (_ BitVec 64)) (t!28322 List!19951)) )
))
(declare-fun arrayNoDuplicates!0 (array!59415 (_ BitVec 32) List!19951) Bool)

(assert (=> b!964854 (= res!645964 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19948))))

(declare-fun b!964855 () Bool)

(declare-fun res!645961 () Bool)

(assert (=> b!964855 (=> (not res!645961) (not e!543948))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33881 0))(
  ( (V!33882 (val!10887 Int)) )
))
(declare-datatypes ((ValueCell!10355 0))(
  ( (ValueCellFull!10355 (v!13445 V!33881)) (EmptyCell!10355) )
))
(declare-datatypes ((array!59417 0))(
  ( (array!59418 (arr!28573 (Array (_ BitVec 32) ValueCell!10355)) (size!29053 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59417)

(assert (=> b!964855 (= res!645961 (and (= (size!29053 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29052 _keys!1686) (size!29053 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!964857 () Bool)

(declare-fun res!645963 () Bool)

(assert (=> b!964857 (=> (not res!645963) (not e!543948))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964857 (= res!645963 (validKeyInArray!0 (select (arr!28572 _keys!1686) i!803)))))

(declare-fun b!964858 () Bool)

(declare-fun e!543946 () Bool)

(declare-fun tp_is_empty!21673 () Bool)

(assert (=> b!964858 (= e!543946 tp_is_empty!21673)))

(declare-fun b!964859 () Bool)

(declare-fun res!645962 () Bool)

(assert (=> b!964859 (=> (not res!645962) (not e!543948))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!964859 (= res!645962 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29052 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29052 _keys!1686))))))

(declare-fun b!964860 () Bool)

(declare-fun e!543945 () Bool)

(declare-fun e!543947 () Bool)

(declare-fun mapRes!34504 () Bool)

(assert (=> b!964860 (= e!543945 (and e!543947 mapRes!34504))))

(declare-fun condMapEmpty!34504 () Bool)

(declare-fun mapDefault!34504 () ValueCell!10355)

