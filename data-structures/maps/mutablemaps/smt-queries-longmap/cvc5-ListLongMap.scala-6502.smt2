; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82880 () Bool)

(assert start!82880)

(declare-fun b_free!18979 () Bool)

(declare-fun b_next!18979 () Bool)

(assert (=> start!82880 (= b_free!18979 (not b_next!18979))))

(declare-fun tp!66067 () Bool)

(declare-fun b_and!30485 () Bool)

(assert (=> start!82880 (= tp!66067 b_and!30485)))

(declare-fun b!966385 () Bool)

(declare-fun res!646980 () Bool)

(declare-fun e!544800 () Bool)

(assert (=> b!966385 (=> (not res!646980) (not e!544800))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34033 0))(
  ( (V!34034 (val!10944 Int)) )
))
(declare-datatypes ((ValueCell!10412 0))(
  ( (ValueCellFull!10412 (v!13502 V!34033)) (EmptyCell!10412) )
))
(declare-datatypes ((array!59637 0))(
  ( (array!59638 (arr!28683 (Array (_ BitVec 32) ValueCell!10412)) (size!29163 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59637)

(declare-datatypes ((array!59639 0))(
  ( (array!59640 (arr!28684 (Array (_ BitVec 32) (_ BitVec 64))) (size!29164 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59639)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966385 (= res!646980 (and (= (size!29163 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29164 _keys!1686) (size!29163 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966386 () Bool)

(declare-fun e!544801 () Bool)

(declare-fun tp_is_empty!21787 () Bool)

(assert (=> b!966386 (= e!544801 tp_is_empty!21787)))

(declare-fun b!966387 () Bool)

(declare-fun res!646981 () Bool)

(assert (=> b!966387 (=> (not res!646981) (not e!544800))))

(declare-datatypes ((List!20034 0))(
  ( (Nil!20031) (Cons!20030 (h!21192 (_ BitVec 64)) (t!28405 List!20034)) )
))
(declare-fun arrayNoDuplicates!0 (array!59639 (_ BitVec 32) List!20034) Bool)

(assert (=> b!966387 (= res!646981 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20031))))

(declare-fun b!966388 () Bool)

(declare-fun res!646984 () Bool)

(assert (=> b!966388 (=> (not res!646984) (not e!544800))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!966388 (= res!646984 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29164 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29164 _keys!1686))))))

(declare-fun b!966389 () Bool)

(declare-fun e!544802 () Bool)

(declare-fun mapRes!34675 () Bool)

(assert (=> b!966389 (= e!544802 (and e!544801 mapRes!34675))))

(declare-fun condMapEmpty!34675 () Bool)

(declare-fun mapDefault!34675 () ValueCell!10412)

