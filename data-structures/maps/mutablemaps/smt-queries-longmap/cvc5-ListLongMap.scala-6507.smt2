; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82910 () Bool)

(assert start!82910)

(declare-fun b_free!19009 () Bool)

(declare-fun b_next!19009 () Bool)

(assert (=> start!82910 (= b_free!19009 (not b_next!19009))))

(declare-fun tp!66156 () Bool)

(declare-fun b_and!30515 () Bool)

(assert (=> start!82910 (= tp!66156 b_and!30515)))

(declare-fun b!966837 () Bool)

(declare-fun res!647300 () Bool)

(declare-fun e!545029 () Bool)

(assert (=> b!966837 (=> (not res!647300) (not e!545029))))

(declare-datatypes ((array!59697 0))(
  ( (array!59698 (arr!28713 (Array (_ BitVec 32) (_ BitVec 64))) (size!29193 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59697)

(declare-datatypes ((List!20060 0))(
  ( (Nil!20057) (Cons!20056 (h!21218 (_ BitVec 64)) (t!28431 List!20060)) )
))
(declare-fun arrayNoDuplicates!0 (array!59697 (_ BitVec 32) List!20060) Bool)

(assert (=> b!966837 (= res!647300 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20057))))

(declare-fun b!966838 () Bool)

(declare-fun res!647301 () Bool)

(assert (=> b!966838 (=> (not res!647301) (not e!545029))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966838 (= res!647301 (validKeyInArray!0 (select (arr!28713 _keys!1686) i!803)))))

(declare-fun b!966839 () Bool)

(declare-fun e!545027 () Bool)

(declare-fun tp_is_empty!21817 () Bool)

(assert (=> b!966839 (= e!545027 tp_is_empty!21817)))

(declare-fun b!966840 () Bool)

(declare-fun e!545026 () Bool)

(assert (=> b!966840 (= e!545026 tp_is_empty!21817)))

(declare-fun b!966841 () Bool)

(declare-fun res!647297 () Bool)

(assert (=> b!966841 (=> (not res!647297) (not e!545029))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59697 (_ BitVec 32)) Bool)

(assert (=> b!966841 (= res!647297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966842 () Bool)

(declare-fun res!647298 () Bool)

(assert (=> b!966842 (=> (not res!647298) (not e!545029))))

(declare-datatypes ((V!34073 0))(
  ( (V!34074 (val!10959 Int)) )
))
(declare-datatypes ((ValueCell!10427 0))(
  ( (ValueCellFull!10427 (v!13517 V!34073)) (EmptyCell!10427) )
))
(declare-datatypes ((array!59699 0))(
  ( (array!59700 (arr!28714 (Array (_ BitVec 32) ValueCell!10427)) (size!29194 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59699)

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!966842 (= res!647298 (and (= (size!29194 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29193 _keys!1686) (size!29194 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34720 () Bool)

(declare-fun mapRes!34720 () Bool)

(assert (=> mapIsEmpty!34720 mapRes!34720))

(declare-fun mapNonEmpty!34720 () Bool)

(declare-fun tp!66157 () Bool)

(assert (=> mapNonEmpty!34720 (= mapRes!34720 (and tp!66157 e!545026))))

(declare-fun mapValue!34720 () ValueCell!10427)

(declare-fun mapKey!34720 () (_ BitVec 32))

(declare-fun mapRest!34720 () (Array (_ BitVec 32) ValueCell!10427))

(assert (=> mapNonEmpty!34720 (= (arr!28714 _values!1400) (store mapRest!34720 mapKey!34720 mapValue!34720))))

(declare-fun b!966843 () Bool)

(declare-fun res!647296 () Bool)

(assert (=> b!966843 (=> (not res!647296) (not e!545029))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966843 (= res!647296 (bvsgt from!2084 newFrom!159))))

(declare-fun b!966845 () Bool)

(declare-fun res!647302 () Bool)

(assert (=> b!966845 (=> (not res!647302) (not e!545029))))

(assert (=> b!966845 (= res!647302 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29193 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29193 _keys!1686))))))

(declare-fun b!966846 () Bool)

(declare-fun e!545025 () Bool)

(assert (=> b!966846 (= e!545025 (and e!545027 mapRes!34720))))

(declare-fun condMapEmpty!34720 () Bool)

(declare-fun mapDefault!34720 () ValueCell!10427)

