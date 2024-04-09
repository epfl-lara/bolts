; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82586 () Bool)

(assert start!82586)

(declare-fun b_free!18691 () Bool)

(declare-fun b_next!18691 () Bool)

(assert (=> start!82586 (= b_free!18691 (not b_next!18691))))

(declare-fun tp!65193 () Bool)

(declare-fun b_and!30197 () Bool)

(assert (=> start!82586 (= tp!65193 b_and!30197)))

(declare-fun mapIsEmpty!34234 () Bool)

(declare-fun mapRes!34234 () Bool)

(assert (=> mapIsEmpty!34234 mapRes!34234))

(declare-fun mapNonEmpty!34234 () Bool)

(declare-fun tp!65194 () Bool)

(declare-fun e!542517 () Bool)

(assert (=> mapNonEmpty!34234 (= mapRes!34234 (and tp!65194 e!542517))))

(declare-datatypes ((V!33641 0))(
  ( (V!33642 (val!10797 Int)) )
))
(declare-datatypes ((ValueCell!10265 0))(
  ( (ValueCellFull!10265 (v!13355 V!33641)) (EmptyCell!10265) )
))
(declare-fun mapRest!34234 () (Array (_ BitVec 32) ValueCell!10265))

(declare-fun mapKey!34234 () (_ BitVec 32))

(declare-fun mapValue!34234 () ValueCell!10265)

(declare-datatypes ((array!59071 0))(
  ( (array!59072 (arr!28400 (Array (_ BitVec 32) ValueCell!10265)) (size!28880 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59071)

(assert (=> mapNonEmpty!34234 (= (arr!28400 _values!1400) (store mapRest!34234 mapKey!34234 mapValue!34234))))

(declare-fun b!961964 () Bool)

(declare-fun res!643883 () Bool)

(declare-fun e!542516 () Bool)

(assert (=> b!961964 (=> (not res!643883) (not e!542516))))

(declare-datatypes ((array!59073 0))(
  ( (array!59074 (arr!28401 (Array (_ BitVec 32) (_ BitVec 64))) (size!28881 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59073)

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!961964 (= res!643883 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28881 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28881 _keys!1686))))))

(declare-fun b!961965 () Bool)

(declare-fun tp_is_empty!21493 () Bool)

(assert (=> b!961965 (= e!542517 tp_is_empty!21493)))

(declare-fun b!961966 () Bool)

(declare-fun res!643884 () Bool)

(assert (=> b!961966 (=> (not res!643884) (not e!542516))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59073 (_ BitVec 32)) Bool)

(assert (=> b!961966 (= res!643884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun res!643886 () Bool)

(assert (=> start!82586 (=> (not res!643886) (not e!542516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82586 (= res!643886 (validMask!0 mask!2110))))

(assert (=> start!82586 e!542516))

(assert (=> start!82586 true))

(declare-fun e!542514 () Bool)

(declare-fun array_inv!21931 (array!59071) Bool)

(assert (=> start!82586 (and (array_inv!21931 _values!1400) e!542514)))

(declare-fun array_inv!21932 (array!59073) Bool)

(assert (=> start!82586 (array_inv!21932 _keys!1686)))

(assert (=> start!82586 tp!65193))

(assert (=> start!82586 tp_is_empty!21493))

(declare-fun b!961967 () Bool)

(declare-fun res!643885 () Bool)

(assert (=> b!961967 (=> (not res!643885) (not e!542516))))

(declare-datatypes ((List!19835 0))(
  ( (Nil!19832) (Cons!19831 (h!20993 (_ BitVec 64)) (t!28206 List!19835)) )
))
(declare-fun arrayNoDuplicates!0 (array!59073 (_ BitVec 32) List!19835) Bool)

(assert (=> b!961967 (= res!643885 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19832))))

(declare-fun b!961968 () Bool)

(declare-fun e!542518 () Bool)

(assert (=> b!961968 (= e!542518 tp_is_empty!21493)))

(declare-fun b!961969 () Bool)

(declare-fun res!643881 () Bool)

(assert (=> b!961969 (=> (not res!643881) (not e!542516))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!961969 (= res!643881 (and (= (size!28880 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28881 _keys!1686) (size!28880 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961970 () Bool)

(assert (=> b!961970 (= e!542514 (and e!542518 mapRes!34234))))

(declare-fun condMapEmpty!34234 () Bool)

(declare-fun mapDefault!34234 () ValueCell!10265)

