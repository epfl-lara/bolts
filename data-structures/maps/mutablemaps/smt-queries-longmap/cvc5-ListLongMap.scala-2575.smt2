; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39276 () Bool)

(assert start!39276)

(declare-fun b_free!9535 () Bool)

(declare-fun b_next!9535 () Bool)

(assert (=> start!39276 (= b_free!9535 (not b_next!9535))))

(declare-fun tp!34134 () Bool)

(declare-fun b_and!16963 () Bool)

(assert (=> start!39276 (= tp!34134 b_and!16963)))

(declare-fun b!414875 () Bool)

(declare-fun res!241384 () Bool)

(declare-fun e!247872 () Bool)

(assert (=> b!414875 (=> (not res!241384) (not e!247872))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414875 (= res!241384 (validKeyInArray!0 k!794))))

(declare-fun b!414876 () Bool)

(declare-fun e!247873 () Bool)

(declare-fun e!247870 () Bool)

(assert (=> b!414876 (= e!247873 (not e!247870))))

(declare-fun res!241378 () Bool)

(assert (=> b!414876 (=> res!241378 e!247870)))

(declare-datatypes ((array!25211 0))(
  ( (array!25212 (arr!12052 (Array (_ BitVec 32) (_ BitVec 64))) (size!12404 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25211)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!414876 (= res!241378 (validKeyInArray!0 (select (arr!12052 _keys!709) from!863)))))

(declare-fun e!247867 () Bool)

(assert (=> b!414876 e!247867))

(declare-fun c!54941 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414876 (= c!54941 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15355 0))(
  ( (V!15356 (val!5388 Int)) )
))
(declare-fun minValue!515 () V!15355)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15355)

(declare-fun v!412 () V!15355)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12227 0))(
  ( (Unit!12228) )
))
(declare-fun lt!190122 () Unit!12227)

(declare-datatypes ((ValueCell!5000 0))(
  ( (ValueCellFull!5000 (v!7631 V!15355)) (EmptyCell!5000) )
))
(declare-datatypes ((array!25213 0))(
  ( (array!25214 (arr!12053 (Array (_ BitVec 32) ValueCell!5000)) (size!12405 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25213)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!376 (array!25211 array!25213 (_ BitVec 32) (_ BitVec 32) V!15355 V!15355 (_ BitVec 32) (_ BitVec 64) V!15355 (_ BitVec 32) Int) Unit!12227)

(assert (=> b!414876 (= lt!190122 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!376 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414877 () Bool)

(declare-fun e!247866 () Bool)

(assert (=> b!414877 (= e!247872 e!247866)))

(declare-fun res!241385 () Bool)

(assert (=> b!414877 (=> (not res!241385) (not e!247866))))

(declare-fun lt!190123 () array!25211)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25211 (_ BitVec 32)) Bool)

(assert (=> b!414877 (= res!241385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190123 mask!1025))))

(assert (=> b!414877 (= lt!190123 (array!25212 (store (arr!12052 _keys!709) i!563 k!794) (size!12404 _keys!709)))))

(declare-fun b!414879 () Bool)

(declare-fun res!241375 () Bool)

(assert (=> b!414879 (=> (not res!241375) (not e!247872))))

(declare-datatypes ((List!6996 0))(
  ( (Nil!6993) (Cons!6992 (h!7848 (_ BitVec 64)) (t!12204 List!6996)) )
))
(declare-fun arrayNoDuplicates!0 (array!25211 (_ BitVec 32) List!6996) Bool)

(assert (=> b!414879 (= res!241375 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6993))))

(declare-fun b!414880 () Bool)

(declare-fun res!241382 () Bool)

(assert (=> b!414880 (=> (not res!241382) (not e!247872))))

(declare-fun arrayContainsKey!0 (array!25211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414880 (= res!241382 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!414881 () Bool)

(declare-fun res!241381 () Bool)

(assert (=> b!414881 (=> (not res!241381) (not e!247872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414881 (= res!241381 (validMask!0 mask!1025))))

(declare-fun b!414882 () Bool)

(declare-fun res!241377 () Bool)

(assert (=> b!414882 (=> (not res!241377) (not e!247872))))

(assert (=> b!414882 (= res!241377 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12404 _keys!709))))))

(declare-fun b!414883 () Bool)

(declare-fun res!241386 () Bool)

(assert (=> b!414883 (=> (not res!241386) (not e!247872))))

(assert (=> b!414883 (= res!241386 (or (= (select (arr!12052 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12052 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414884 () Bool)

(declare-fun e!247871 () Bool)

(declare-fun tp_is_empty!10687 () Bool)

(assert (=> b!414884 (= e!247871 tp_is_empty!10687)))

(declare-fun b!414885 () Bool)

(declare-fun e!247869 () Bool)

(assert (=> b!414885 (= e!247869 tp_is_empty!10687)))

(declare-fun mapNonEmpty!17652 () Bool)

(declare-fun mapRes!17652 () Bool)

(declare-fun tp!34133 () Bool)

(assert (=> mapNonEmpty!17652 (= mapRes!17652 (and tp!34133 e!247871))))

(declare-fun mapKey!17652 () (_ BitVec 32))

(declare-fun mapRest!17652 () (Array (_ BitVec 32) ValueCell!5000))

(declare-fun mapValue!17652 () ValueCell!5000)

(assert (=> mapNonEmpty!17652 (= (arr!12053 _values!549) (store mapRest!17652 mapKey!17652 mapValue!17652))))

(declare-fun b!414886 () Bool)

(declare-fun e!247865 () Bool)

(assert (=> b!414886 (= e!247865 (and e!247869 mapRes!17652))))

(declare-fun condMapEmpty!17652 () Bool)

(declare-fun mapDefault!17652 () ValueCell!5000)

