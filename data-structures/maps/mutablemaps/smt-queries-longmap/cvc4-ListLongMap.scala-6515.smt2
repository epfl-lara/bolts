; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82962 () Bool)

(assert start!82962)

(declare-fun b_free!19061 () Bool)

(declare-fun b_next!19061 () Bool)

(assert (=> start!82962 (= b_free!19061 (not b_next!19061))))

(declare-fun tp!66312 () Bool)

(declare-fun b_and!30567 () Bool)

(assert (=> start!82962 (= tp!66312 b_and!30567)))

(declare-fun b!967695 () Bool)

(declare-fun res!647924 () Bool)

(declare-fun e!545415 () Bool)

(assert (=> b!967695 (=> (not res!647924) (not e!545415))))

(declare-datatypes ((array!59789 0))(
  ( (array!59790 (arr!28759 (Array (_ BitVec 32) (_ BitVec 64))) (size!29239 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59789)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967695 (= res!647924 (validKeyInArray!0 (select (arr!28759 _keys!1686) i!803)))))

(declare-fun res!647920 () Bool)

(assert (=> start!82962 (=> (not res!647920) (not e!545415))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82962 (= res!647920 (validMask!0 mask!2110))))

(assert (=> start!82962 e!545415))

(assert (=> start!82962 true))

(declare-datatypes ((V!34141 0))(
  ( (V!34142 (val!10985 Int)) )
))
(declare-datatypes ((ValueCell!10453 0))(
  ( (ValueCellFull!10453 (v!13543 V!34141)) (EmptyCell!10453) )
))
(declare-datatypes ((array!59791 0))(
  ( (array!59792 (arr!28760 (Array (_ BitVec 32) ValueCell!10453)) (size!29240 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59791)

(declare-fun e!545416 () Bool)

(declare-fun array_inv!22159 (array!59791) Bool)

(assert (=> start!82962 (and (array_inv!22159 _values!1400) e!545416)))

(declare-fun array_inv!22160 (array!59789) Bool)

(assert (=> start!82962 (array_inv!22160 _keys!1686)))

(assert (=> start!82962 tp!66312))

(declare-fun tp_is_empty!21869 () Bool)

(assert (=> start!82962 tp_is_empty!21869))

(declare-fun b!967696 () Bool)

(declare-fun e!545417 () Bool)

(assert (=> b!967696 (= e!545417 tp_is_empty!21869)))

(declare-fun mapIsEmpty!34798 () Bool)

(declare-fun mapRes!34798 () Bool)

(assert (=> mapIsEmpty!34798 mapRes!34798))

(declare-fun b!967697 () Bool)

(declare-fun res!647923 () Bool)

(assert (=> b!967697 (=> (not res!647923) (not e!545415))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!967697 (= res!647923 (and (= (size!29240 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29239 _keys!1686) (size!29240 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967698 () Bool)

(declare-fun res!647925 () Bool)

(assert (=> b!967698 (=> (not res!647925) (not e!545415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59789 (_ BitVec 32)) Bool)

(assert (=> b!967698 (= res!647925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967699 () Bool)

(declare-fun res!647921 () Bool)

(assert (=> b!967699 (=> (not res!647921) (not e!545415))))

(declare-datatypes ((List!20093 0))(
  ( (Nil!20090) (Cons!20089 (h!21251 (_ BitVec 64)) (t!28464 List!20093)) )
))
(declare-fun arrayNoDuplicates!0 (array!59789 (_ BitVec 32) List!20093) Bool)

(assert (=> b!967699 (= res!647921 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20090))))

(declare-fun b!967700 () Bool)

(declare-fun res!647926 () Bool)

(assert (=> b!967700 (=> (not res!647926) (not e!545415))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!967700 (= res!647926 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29239 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29239 _keys!1686))))))

(declare-fun b!967701 () Bool)

(declare-fun res!647922 () Bool)

(assert (=> b!967701 (=> (not res!647922) (not e!545415))))

(assert (=> b!967701 (= res!647922 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967702 () Bool)

(assert (=> b!967702 (= e!545416 (and e!545417 mapRes!34798))))

(declare-fun condMapEmpty!34798 () Bool)

(declare-fun mapDefault!34798 () ValueCell!10453)

