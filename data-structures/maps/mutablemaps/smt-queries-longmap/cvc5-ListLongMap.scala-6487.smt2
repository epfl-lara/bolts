; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82790 () Bool)

(assert start!82790)

(declare-fun b_free!18895 () Bool)

(declare-fun b_next!18895 () Bool)

(assert (=> start!82790 (= b_free!18895 (not b_next!18895))))

(declare-fun tp!65805 () Bool)

(declare-fun b_and!30401 () Bool)

(assert (=> start!82790 (= tp!65805 b_and!30401)))

(declare-fun b!965177 () Bool)

(declare-fun res!646176 () Bool)

(declare-fun e!544126 () Bool)

(assert (=> b!965177 (=> (not res!646176) (not e!544126))))

(declare-datatypes ((array!59459 0))(
  ( (array!59460 (arr!28594 (Array (_ BitVec 32) (_ BitVec 64))) (size!29074 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59459)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965177 (= res!646176 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29074 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29074 _keys!1686))))))

(declare-fun b!965178 () Bool)

(declare-fun res!646179 () Bool)

(assert (=> b!965178 (=> (not res!646179) (not e!544126))))

(declare-datatypes ((List!19968 0))(
  ( (Nil!19965) (Cons!19964 (h!21126 (_ BitVec 64)) (t!28339 List!19968)) )
))
(declare-fun arrayNoDuplicates!0 (array!59459 (_ BitVec 32) List!19968) Bool)

(assert (=> b!965178 (= res!646179 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19965))))

(declare-fun b!965179 () Bool)

(declare-fun e!544128 () Bool)

(declare-fun tp_is_empty!21697 () Bool)

(assert (=> b!965179 (= e!544128 tp_is_empty!21697)))

(declare-fun b!965180 () Bool)

(declare-fun res!646178 () Bool)

(assert (=> b!965180 (=> (not res!646178) (not e!544126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965180 (= res!646178 (validKeyInArray!0 (select (arr!28594 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34540 () Bool)

(declare-fun mapRes!34540 () Bool)

(assert (=> mapIsEmpty!34540 mapRes!34540))

(declare-fun b!965181 () Bool)

(declare-fun e!544127 () Bool)

(assert (=> b!965181 (= e!544127 tp_is_empty!21697)))

(declare-fun b!965183 () Bool)

(declare-fun res!646181 () Bool)

(assert (=> b!965183 (=> (not res!646181) (not e!544126))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33913 0))(
  ( (V!33914 (val!10899 Int)) )
))
(declare-datatypes ((ValueCell!10367 0))(
  ( (ValueCellFull!10367 (v!13457 V!33913)) (EmptyCell!10367) )
))
(declare-datatypes ((array!59461 0))(
  ( (array!59462 (arr!28595 (Array (_ BitVec 32) ValueCell!10367)) (size!29075 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59461)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965183 (= res!646181 (and (= (size!29075 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29074 _keys!1686) (size!29075 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965184 () Bool)

(declare-fun res!646180 () Bool)

(assert (=> b!965184 (=> (not res!646180) (not e!544126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59459 (_ BitVec 32)) Bool)

(assert (=> b!965184 (= res!646180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965185 () Bool)

(declare-fun e!544129 () Bool)

(assert (=> b!965185 (= e!544129 (and e!544128 mapRes!34540))))

(declare-fun condMapEmpty!34540 () Bool)

(declare-fun mapDefault!34540 () ValueCell!10367)

